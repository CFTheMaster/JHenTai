import 'dart:collection';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:extended_image/extended_image.dart';
import 'package:get/get.dart';
import 'package:jhentai/src/network/eh_request.dart';
import 'package:jhentai/src/service/storage_service.dart';
import 'package:jhentai/src/setting/path_setting.dart';
import 'package:jhentai/src/widget/loading_state_indicator.dart';
import 'package:path/path.dart';
import 'package:retry/retry.dart';

import '../database/database.dart';
import '../utils/log.dart';

class TagTranslationService extends GetxService {
  final StorageService storageService = Get.find();
  final String tagStoragePrefix = 'tagTrans::';
  final String downloadUrl = 'https://cdn.jsdelivr.net/gh/EhTagTranslation/DatabaseReleases/db.html.json';
  final String savePath = join(PathSetting.getVisiblePath().path, 'tag_translation.json');

  Rx<LoadingState> loadingState = LoadingState.idle.obs;
  RxnString timeStamp = RxnString(null);
  RxString downloadProgress = RxString('0 MB');

  static void init() {
    Get.put(TagTranslationService());
    Log.info('init TagTranslationService success', false);
  }

  void onInit() {
    loadingState.value = LoadingState.values[storageService.read('TagTranslationServiceLoadingState') ?? 0];
    timeStamp.value = storageService.read('TagTranslationServiceTimestamp');
    super.onInit();
  }

  Future<void> updateDatabase() async {
    if (loadingState.value == LoadingState.loading) {
      return;
    }
    loadingState.value = LoadingState.loading;

    List dataList = await _getDataList();
    if (dataList.isEmpty) {
      return;
    }

    List<TagData> tagList = [];
    for (final data in dataList) {
      String namespace = data['namespace'];
      Map tags = data['data'] as Map;
      tags.forEach((key, value) {
        String _key = key as String;
        String tagName = RegExp(r'.*>(.+)<.*').firstMatch((value['name']))!.group(1)!;
        String fullTagName = value['name'];
        String intro = value['intro'];
        String links = value['links'];
        tagList.add(TagData(
            namespace: namespace, key: _key, tagName: tagName, fullTagName: fullTagName, intro: intro, links: links));
      });
    }

    await _clear();
    await _save(tagList);
    storageService.write('TagTranslationServiceLoadingState', LoadingState.success.index);
    storageService.write('TagTranslationServiceTimestamp', timeStamp.value);
    loadingState.value = LoadingState.success;
    Log.info('update tagTranslation database success', false);
    File(savePath).delete();
  }

  Future<TagData?> getTagTranslation(String namespace, String key) async {
    List<TagData> list = (await appDb.selectTagByNamespaceAndKey(namespace, key).get());
    return list.isNotEmpty ? list.first : null;
  }

  Future<LinkedHashMap<String, List<TagData>>> getTagMapTranslation(LinkedHashMap<String, List<TagData>> tags) async {
    LinkedHashMap<String, List<TagData>> translatedTags = LinkedHashMap();

    Iterator iterator = tags.entries.iterator;
    while (iterator.moveNext()) {
      MapEntry<String, List<TagData>> entry = iterator.current;
      String namespace = entry.key;
      List<TagData> tagDatas = entry.value;

      String newNamespace = (await getTagTranslation('rows', namespace))?.tagName ?? namespace;
      List<TagData> newTagDatas = [];
      for (TagData tagData in tagDatas) {
        newTagDatas.add((await getTagTranslation(tagData.namespace, tagData.key)) ?? tagData);
      }
      translatedTags[newNamespace] = newTagDatas;
    }
    return translatedTags;
  }

  Future<List> _getDataList() async {
    try {
      await retry(
        () async {
          await EHRequest.download(
              url: downloadUrl,
              path: savePath,
              options: Options(receiveTimeout: 30000),
              onReceiveProgress: (count, total) {
                downloadProgress.value = (count / 1024 / 1024).toStringAsFixed(2) + ' MB';
              });
        },
        maxAttempts: 5,
        onRetry: (error) => Log.warning('download tag translation data failed, retry.', false),
      );
    } on DioError catch (e) {
      Log.error('download tag translation data failed after 3 times', e.message);
      loadingState.value = LoadingState.error;
      return [];
    }

    String json = File(savePath).readAsStringSync();
    Map dataMap = jsonDecode(json);

    Map head = dataMap['head'] as Map;
    Map committer = head['committer'] as Map;
    timeStamp.value = committer['when'] as String;

    List dataList = dataMap['data'] as List;

    Log.info('tag translation data downloaded, legnth: ${dataList.length}', false);
    return dataList;
  }

  Future<void> _save(List<TagData> list) async {
    return appDb.transaction(() async {
      for (TagData tag in list) {
        await appDb.insertTag(
          tag.namespace,
          tag.key,
          tag.tagName,
          tag.fullTagName,
          tag.intro,
          tag.links,
        );
      }
    });
  }

  Future<int> _clear() async {
    return appDb.deleteAllTags();
  }
}