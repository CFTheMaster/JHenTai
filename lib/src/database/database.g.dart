// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class GalleryDownloadedData extends DataClass
    implements Insertable<GalleryDownloadedData> {
  final int gid;
  final String token;
  final String title;
  final String category;
  final int pageCount;
  final String galleryUrl;
  final String uploader;
  final String publishTime;
  final int downloadStatusIndex;
  GalleryDownloadedData(
      {required this.gid,
      required this.token,
      required this.title,
      required this.category,
      required this.pageCount,
      required this.galleryUrl,
      required this.uploader,
      required this.publishTime,
      required this.downloadStatusIndex});
  factory GalleryDownloadedData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GalleryDownloadedData(
      gid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gid'])!,
      token: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}token'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      pageCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pageCount'])!,
      galleryUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}galleryUrl'])!,
      uploader: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uploader'])!,
      publishTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}publishTime'])!,
      downloadStatusIndex: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}downloadStatusIndex'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['gid'] = Variable<int>(gid);
    map['token'] = Variable<String>(token);
    map['title'] = Variable<String>(title);
    map['category'] = Variable<String>(category);
    map['pageCount'] = Variable<int>(pageCount);
    map['galleryUrl'] = Variable<String>(galleryUrl);
    map['uploader'] = Variable<String>(uploader);
    map['publishTime'] = Variable<String>(publishTime);
    map['downloadStatusIndex'] = Variable<int>(downloadStatusIndex);
    return map;
  }

  GalleryDownloadedCompanion toCompanion(bool nullToAbsent) {
    return GalleryDownloadedCompanion(
      gid: Value(gid),
      token: Value(token),
      title: Value(title),
      category: Value(category),
      pageCount: Value(pageCount),
      galleryUrl: Value(galleryUrl),
      uploader: Value(uploader),
      publishTime: Value(publishTime),
      downloadStatusIndex: Value(downloadStatusIndex),
    );
  }

  factory GalleryDownloadedData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GalleryDownloadedData(
      gid: serializer.fromJson<int>(json['gid']),
      token: serializer.fromJson<String>(json['token']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<String>(json['category']),
      pageCount: serializer.fromJson<int>(json['pageCount']),
      galleryUrl: serializer.fromJson<String>(json['galleryUrl']),
      uploader: serializer.fromJson<String>(json['uploader']),
      publishTime: serializer.fromJson<String>(json['publishTime']),
      downloadStatusIndex:
          serializer.fromJson<int>(json['downloadStatusIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'gid': serializer.toJson<int>(gid),
      'token': serializer.toJson<String>(token),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<String>(category),
      'pageCount': serializer.toJson<int>(pageCount),
      'galleryUrl': serializer.toJson<String>(galleryUrl),
      'uploader': serializer.toJson<String>(uploader),
      'publishTime': serializer.toJson<String>(publishTime),
      'downloadStatusIndex': serializer.toJson<int>(downloadStatusIndex),
    };
  }

  GalleryDownloadedData copyWith(
          {int? gid,
          String? token,
          String? title,
          String? category,
          int? pageCount,
          String? galleryUrl,
          String? uploader,
          String? publishTime,
          int? downloadStatusIndex}) =>
      GalleryDownloadedData(
        gid: gid ?? this.gid,
        token: token ?? this.token,
        title: title ?? this.title,
        category: category ?? this.category,
        pageCount: pageCount ?? this.pageCount,
        galleryUrl: galleryUrl ?? this.galleryUrl,
        uploader: uploader ?? this.uploader,
        publishTime: publishTime ?? this.publishTime,
        downloadStatusIndex: downloadStatusIndex ?? this.downloadStatusIndex,
      );
  @override
  String toString() {
    return (StringBuffer('GalleryDownloadedData(')
          ..write('gid: $gid, ')
          ..write('token: $token, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('pageCount: $pageCount, ')
          ..write('galleryUrl: $galleryUrl, ')
          ..write('uploader: $uploader, ')
          ..write('publishTime: $publishTime, ')
          ..write('downloadStatusIndex: $downloadStatusIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(gid, token, title, category, pageCount,
      galleryUrl, uploader, publishTime, downloadStatusIndex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GalleryDownloadedData &&
          other.gid == this.gid &&
          other.token == this.token &&
          other.title == this.title &&
          other.category == this.category &&
          other.pageCount == this.pageCount &&
          other.galleryUrl == this.galleryUrl &&
          other.uploader == this.uploader &&
          other.publishTime == this.publishTime &&
          other.downloadStatusIndex == this.downloadStatusIndex);
}

class GalleryDownloadedCompanion
    extends UpdateCompanion<GalleryDownloadedData> {
  final Value<int> gid;
  final Value<String> token;
  final Value<String> title;
  final Value<String> category;
  final Value<int> pageCount;
  final Value<String> galleryUrl;
  final Value<String> uploader;
  final Value<String> publishTime;
  final Value<int> downloadStatusIndex;
  const GalleryDownloadedCompanion({
    this.gid = const Value.absent(),
    this.token = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.pageCount = const Value.absent(),
    this.galleryUrl = const Value.absent(),
    this.uploader = const Value.absent(),
    this.publishTime = const Value.absent(),
    this.downloadStatusIndex = const Value.absent(),
  });
  GalleryDownloadedCompanion.insert({
    this.gid = const Value.absent(),
    required String token,
    required String title,
    required String category,
    required int pageCount,
    required String galleryUrl,
    required String uploader,
    required String publishTime,
    required int downloadStatusIndex,
  })  : token = Value(token),
        title = Value(title),
        category = Value(category),
        pageCount = Value(pageCount),
        galleryUrl = Value(galleryUrl),
        uploader = Value(uploader),
        publishTime = Value(publishTime),
        downloadStatusIndex = Value(downloadStatusIndex);
  static Insertable<GalleryDownloadedData> custom({
    Expression<int>? gid,
    Expression<String>? token,
    Expression<String>? title,
    Expression<String>? category,
    Expression<int>? pageCount,
    Expression<String>? galleryUrl,
    Expression<String>? uploader,
    Expression<String>? publishTime,
    Expression<int>? downloadStatusIndex,
  }) {
    return RawValuesInsertable({
      if (gid != null) 'gid': gid,
      if (token != null) 'token': token,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (pageCount != null) 'pageCount': pageCount,
      if (galleryUrl != null) 'galleryUrl': galleryUrl,
      if (uploader != null) 'uploader': uploader,
      if (publishTime != null) 'publishTime': publishTime,
      if (downloadStatusIndex != null)
        'downloadStatusIndex': downloadStatusIndex,
    });
  }

  GalleryDownloadedCompanion copyWith(
      {Value<int>? gid,
      Value<String>? token,
      Value<String>? title,
      Value<String>? category,
      Value<int>? pageCount,
      Value<String>? galleryUrl,
      Value<String>? uploader,
      Value<String>? publishTime,
      Value<int>? downloadStatusIndex}) {
    return GalleryDownloadedCompanion(
      gid: gid ?? this.gid,
      token: token ?? this.token,
      title: title ?? this.title,
      category: category ?? this.category,
      pageCount: pageCount ?? this.pageCount,
      galleryUrl: galleryUrl ?? this.galleryUrl,
      uploader: uploader ?? this.uploader,
      publishTime: publishTime ?? this.publishTime,
      downloadStatusIndex: downloadStatusIndex ?? this.downloadStatusIndex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gid.present) {
      map['gid'] = Variable<int>(gid.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (pageCount.present) {
      map['pageCount'] = Variable<int>(pageCount.value);
    }
    if (galleryUrl.present) {
      map['galleryUrl'] = Variable<String>(galleryUrl.value);
    }
    if (uploader.present) {
      map['uploader'] = Variable<String>(uploader.value);
    }
    if (publishTime.present) {
      map['publishTime'] = Variable<String>(publishTime.value);
    }
    if (downloadStatusIndex.present) {
      map['downloadStatusIndex'] = Variable<int>(downloadStatusIndex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GalleryDownloadedCompanion(')
          ..write('gid: $gid, ')
          ..write('token: $token, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('pageCount: $pageCount, ')
          ..write('galleryUrl: $galleryUrl, ')
          ..write('uploader: $uploader, ')
          ..write('publishTime: $publishTime, ')
          ..write('downloadStatusIndex: $downloadStatusIndex')
          ..write(')'))
        .toString();
  }
}

class GalleryDownloaded extends Table
    with TableInfo<GalleryDownloaded, GalleryDownloadedData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  GalleryDownloaded(this.attachedDatabase, [this._alias]);
  final VerificationMeta _gidMeta = const VerificationMeta('gid');
  late final GeneratedColumn<int?> gid = GeneratedColumn<int?>(
      'gid', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  late final GeneratedColumn<String?> token = GeneratedColumn<String?>(
      'token', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _pageCountMeta = const VerificationMeta('pageCount');
  late final GeneratedColumn<int?> pageCount = GeneratedColumn<int?>(
      'pageCount', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _galleryUrlMeta = const VerificationMeta('galleryUrl');
  late final GeneratedColumn<String?> galleryUrl = GeneratedColumn<String?>(
      'galleryUrl', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _uploaderMeta = const VerificationMeta('uploader');
  late final GeneratedColumn<String?> uploader = GeneratedColumn<String?>(
      'uploader', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _publishTimeMeta =
      const VerificationMeta('publishTime');
  late final GeneratedColumn<String?> publishTime = GeneratedColumn<String?>(
      'publishTime', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _downloadStatusIndexMeta =
      const VerificationMeta('downloadStatusIndex');
  late final GeneratedColumn<int?> downloadStatusIndex = GeneratedColumn<int?>(
      'downloadStatusIndex', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        gid,
        token,
        title,
        category,
        pageCount,
        galleryUrl,
        uploader,
        publishTime,
        downloadStatusIndex
      ];
  @override
  String get aliasedName => _alias ?? 'gallery_downloaded';
  @override
  String get actualTableName => 'gallery_downloaded';
  @override
  VerificationContext validateIntegrity(
      Insertable<GalleryDownloadedData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('gid')) {
      context.handle(
          _gidMeta, gid.isAcceptableOrUnknown(data['gid']!, _gidMeta));
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('pageCount')) {
      context.handle(_pageCountMeta,
          pageCount.isAcceptableOrUnknown(data['pageCount']!, _pageCountMeta));
    } else if (isInserting) {
      context.missing(_pageCountMeta);
    }
    if (data.containsKey('galleryUrl')) {
      context.handle(
          _galleryUrlMeta,
          galleryUrl.isAcceptableOrUnknown(
              data['galleryUrl']!, _galleryUrlMeta));
    } else if (isInserting) {
      context.missing(_galleryUrlMeta);
    }
    if (data.containsKey('uploader')) {
      context.handle(_uploaderMeta,
          uploader.isAcceptableOrUnknown(data['uploader']!, _uploaderMeta));
    } else if (isInserting) {
      context.missing(_uploaderMeta);
    }
    if (data.containsKey('publishTime')) {
      context.handle(
          _publishTimeMeta,
          publishTime.isAcceptableOrUnknown(
              data['publishTime']!, _publishTimeMeta));
    } else if (isInserting) {
      context.missing(_publishTimeMeta);
    }
    if (data.containsKey('downloadStatusIndex')) {
      context.handle(
          _downloadStatusIndexMeta,
          downloadStatusIndex.isAcceptableOrUnknown(
              data['downloadStatusIndex']!, _downloadStatusIndexMeta));
    } else if (isInserting) {
      context.missing(_downloadStatusIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {gid};
  @override
  GalleryDownloadedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GalleryDownloadedData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  GalleryDownloaded createAlias(String alias) {
    return GalleryDownloaded(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ImageData extends DataClass implements Insertable<ImageData> {
  final String url;
  final int serialNo;
  final int gid;
  final double height;
  final double width;
  final String path;
  final int downloadStatusIndex;
  ImageData(
      {required this.url,
      required this.serialNo,
      required this.gid,
      required this.height,
      required this.width,
      required this.path,
      required this.downloadStatusIndex});
  factory ImageData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ImageData(
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      serialNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}serialNo'])!,
      gid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gid'])!,
      height: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}height'])!,
      width: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}width'])!,
      path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}path'])!,
      downloadStatusIndex: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}downloadStatusIndex'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['url'] = Variable<String>(url);
    map['serialNo'] = Variable<int>(serialNo);
    map['gid'] = Variable<int>(gid);
    map['height'] = Variable<double>(height);
    map['width'] = Variable<double>(width);
    map['path'] = Variable<String>(path);
    map['downloadStatusIndex'] = Variable<int>(downloadStatusIndex);
    return map;
  }

  ImageCompanion toCompanion(bool nullToAbsent) {
    return ImageCompanion(
      url: Value(url),
      serialNo: Value(serialNo),
      gid: Value(gid),
      height: Value(height),
      width: Value(width),
      path: Value(path),
      downloadStatusIndex: Value(downloadStatusIndex),
    );
  }

  factory ImageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ImageData(
      url: serializer.fromJson<String>(json['url']),
      serialNo: serializer.fromJson<int>(json['serialNo']),
      gid: serializer.fromJson<int>(json['gid']),
      height: serializer.fromJson<double>(json['height']),
      width: serializer.fromJson<double>(json['width']),
      path: serializer.fromJson<String>(json['path']),
      downloadStatusIndex:
          serializer.fromJson<int>(json['downloadStatusIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'url': serializer.toJson<String>(url),
      'serialNo': serializer.toJson<int>(serialNo),
      'gid': serializer.toJson<int>(gid),
      'height': serializer.toJson<double>(height),
      'width': serializer.toJson<double>(width),
      'path': serializer.toJson<String>(path),
      'downloadStatusIndex': serializer.toJson<int>(downloadStatusIndex),
    };
  }

  ImageData copyWith(
          {String? url,
          int? serialNo,
          int? gid,
          double? height,
          double? width,
          String? path,
          int? downloadStatusIndex}) =>
      ImageData(
        url: url ?? this.url,
        serialNo: serialNo ?? this.serialNo,
        gid: gid ?? this.gid,
        height: height ?? this.height,
        width: width ?? this.width,
        path: path ?? this.path,
        downloadStatusIndex: downloadStatusIndex ?? this.downloadStatusIndex,
      );
  @override
  String toString() {
    return (StringBuffer('ImageData(')
          ..write('url: $url, ')
          ..write('serialNo: $serialNo, ')
          ..write('gid: $gid, ')
          ..write('height: $height, ')
          ..write('width: $width, ')
          ..write('path: $path, ')
          ..write('downloadStatusIndex: $downloadStatusIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(url, serialNo, gid, height, width, path, downloadStatusIndex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageData &&
          other.url == this.url &&
          other.serialNo == this.serialNo &&
          other.gid == this.gid &&
          other.height == this.height &&
          other.width == this.width &&
          other.path == this.path &&
          other.downloadStatusIndex == this.downloadStatusIndex);
}

class ImageCompanion extends UpdateCompanion<ImageData> {
  final Value<String> url;
  final Value<int> serialNo;
  final Value<int> gid;
  final Value<double> height;
  final Value<double> width;
  final Value<String> path;
  final Value<int> downloadStatusIndex;
  const ImageCompanion({
    this.url = const Value.absent(),
    this.serialNo = const Value.absent(),
    this.gid = const Value.absent(),
    this.height = const Value.absent(),
    this.width = const Value.absent(),
    this.path = const Value.absent(),
    this.downloadStatusIndex = const Value.absent(),
  });
  ImageCompanion.insert({
    required String url,
    required int serialNo,
    required int gid,
    required double height,
    required double width,
    required String path,
    required int downloadStatusIndex,
  })  : url = Value(url),
        serialNo = Value(serialNo),
        gid = Value(gid),
        height = Value(height),
        width = Value(width),
        path = Value(path),
        downloadStatusIndex = Value(downloadStatusIndex);
  static Insertable<ImageData> custom({
    Expression<String>? url,
    Expression<int>? serialNo,
    Expression<int>? gid,
    Expression<double>? height,
    Expression<double>? width,
    Expression<String>? path,
    Expression<int>? downloadStatusIndex,
  }) {
    return RawValuesInsertable({
      if (url != null) 'url': url,
      if (serialNo != null) 'serialNo': serialNo,
      if (gid != null) 'gid': gid,
      if (height != null) 'height': height,
      if (width != null) 'width': width,
      if (path != null) 'path': path,
      if (downloadStatusIndex != null)
        'downloadStatusIndex': downloadStatusIndex,
    });
  }

  ImageCompanion copyWith(
      {Value<String>? url,
      Value<int>? serialNo,
      Value<int>? gid,
      Value<double>? height,
      Value<double>? width,
      Value<String>? path,
      Value<int>? downloadStatusIndex}) {
    return ImageCompanion(
      url: url ?? this.url,
      serialNo: serialNo ?? this.serialNo,
      gid: gid ?? this.gid,
      height: height ?? this.height,
      width: width ?? this.width,
      path: path ?? this.path,
      downloadStatusIndex: downloadStatusIndex ?? this.downloadStatusIndex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (serialNo.present) {
      map['serialNo'] = Variable<int>(serialNo.value);
    }
    if (gid.present) {
      map['gid'] = Variable<int>(gid.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (width.present) {
      map['width'] = Variable<double>(width.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (downloadStatusIndex.present) {
      map['downloadStatusIndex'] = Variable<int>(downloadStatusIndex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImageCompanion(')
          ..write('url: $url, ')
          ..write('serialNo: $serialNo, ')
          ..write('gid: $gid, ')
          ..write('height: $height, ')
          ..write('width: $width, ')
          ..write('path: $path, ')
          ..write('downloadStatusIndex: $downloadStatusIndex')
          ..write(')'))
        .toString();
  }
}

class Image extends Table with TableInfo<Image, ImageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Image(this.attachedDatabase, [this._alias]);
  final VerificationMeta _urlMeta = const VerificationMeta('url');
  late final GeneratedColumn<String?> url = GeneratedColumn<String?>(
      'url', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _serialNoMeta = const VerificationMeta('serialNo');
  late final GeneratedColumn<int?> serialNo = GeneratedColumn<int?>(
      'serialNo', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _gidMeta = const VerificationMeta('gid');
  late final GeneratedColumn<int?> gid = GeneratedColumn<int?>(
      'gid', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES gallery_downloaded (gid)');
  final VerificationMeta _heightMeta = const VerificationMeta('height');
  late final GeneratedColumn<double?> height = GeneratedColumn<double?>(
      'height', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _widthMeta = const VerificationMeta('width');
  late final GeneratedColumn<double?> width = GeneratedColumn<double?>(
      'width', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _pathMeta = const VerificationMeta('path');
  late final GeneratedColumn<String?> path = GeneratedColumn<String?>(
      'path', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _downloadStatusIndexMeta =
      const VerificationMeta('downloadStatusIndex');
  late final GeneratedColumn<int?> downloadStatusIndex = GeneratedColumn<int?>(
      'downloadStatusIndex', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [url, serialNo, gid, height, width, path, downloadStatusIndex];
  @override
  String get aliasedName => _alias ?? 'image';
  @override
  String get actualTableName => 'image';
  @override
  VerificationContext validateIntegrity(Insertable<ImageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('serialNo')) {
      context.handle(_serialNoMeta,
          serialNo.isAcceptableOrUnknown(data['serialNo']!, _serialNoMeta));
    } else if (isInserting) {
      context.missing(_serialNoMeta);
    }
    if (data.containsKey('gid')) {
      context.handle(
          _gidMeta, gid.isAcceptableOrUnknown(data['gid']!, _gidMeta));
    } else if (isInserting) {
      context.missing(_gidMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('downloadStatusIndex')) {
      context.handle(
          _downloadStatusIndexMeta,
          downloadStatusIndex.isAcceptableOrUnknown(
              data['downloadStatusIndex']!, _downloadStatusIndexMeta));
    } else if (isInserting) {
      context.missing(_downloadStatusIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {url};
  @override
  ImageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ImageData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Image createAlias(String alias) {
    return Image(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final GalleryDownloaded galleryDownloaded = GalleryDownloaded(this);
  late final Image image = Image(this);
  Selectable<SelectGallerysWithImagesResult> selectGallerysWithImages() {
    return customSelect(
        'SELECT g.gid,\r\n       token,\r\n       title,\r\n       category,\r\n       pageCount,\r\n       galleryUrl,\r\n       uploader,\r\n       publishTime,\r\n       g.downloadStatusIndex as galleryDownloadStatusIndex,\r\n       url,\r\n       i.serialNo,\r\n       height,\r\n       width,\r\n       path,\r\n       i.downloadStatusIndex as imageDownloadStatusIndex\r\nFROM gallery_downloaded g\r\n         left join image i on g.gid = i.gid',
        variables: [],
        readsFrom: {
          galleryDownloaded,
          image,
        }).map((QueryRow row) {
      return SelectGallerysWithImagesResult(
        gid: row.read<int>('gid'),
        token: row.read<String>('token'),
        title: row.read<String>('title'),
        category: row.read<String>('category'),
        pageCount: row.read<int>('pageCount'),
        galleryUrl: row.read<String>('galleryUrl'),
        uploader: row.read<String>('uploader'),
        publishTime: row.read<String>('publishTime'),
        galleryDownloadStatusIndex: row.read<int>('galleryDownloadStatusIndex'),
        url: row.read<String?>('url'),
        serialNo: row.read<int?>('serialNo'),
        height: row.read<double?>('height'),
        width: row.read<double?>('width'),
        path: row.read<String?>('path'),
        imageDownloadStatusIndex: row.read<int?>('imageDownloadStatusIndex'),
      );
    });
  }

  Selectable<GalleryDownloadedData> selectGallerys() {
    return customSelect('SELECT *\r\nFROM gallery_downloaded',
        variables: [],
        readsFrom: {
          galleryDownloaded,
        }).map(galleryDownloaded.mapFromRow);
  }

  Future<int> insertGallery(
      int gid,
      String token,
      String title,
      String category,
      int pageCount,
      String galleryUrl,
      String uploader,
      String publishTime,
      int downloadStatusIndex) {
    return customInsert(
      'insert into gallery_downloaded\r\nvalues (:gid, :token, :title, :category, :pageCount, :galleryUrl, :uploader, :publishTime, :downloadStatusIndex)',
      variables: [
        Variable<int>(gid),
        Variable<String>(token),
        Variable<String>(title),
        Variable<String>(category),
        Variable<int>(pageCount),
        Variable<String>(galleryUrl),
        Variable<String>(uploader),
        Variable<String>(publishTime),
        Variable<int>(downloadStatusIndex)
      ],
      updates: {galleryDownloaded},
    );
  }

  Future<int> deleteGallery(int gid) {
    return customUpdate(
      'delete\r\nfrom gallery_downloaded\r\nwhere gid = :gid',
      variables: [Variable<int>(gid)],
      updates: {galleryDownloaded},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> updateGallery(int downloadStatusIndex, int gid) {
    return customUpdate(
      'update gallery_downloaded\r\nset downloadStatusIndex = :downloadStatusIndex\r\nwhere gid = :gid',
      variables: [Variable<int>(downloadStatusIndex), Variable<int>(gid)],
      updates: {galleryDownloaded},
      updateKind: UpdateKind.update,
    );
  }

  Selectable<GalleryDownloadedData> selectImagesByGalleryId(int gid) {
    return customSelect(
        'SELECT *\r\nFROM gallery_downloaded\r\nwhere gid = :gid',
        variables: [
          Variable<int>(gid)
        ],
        readsFrom: {
          galleryDownloaded,
        }).map(galleryDownloaded.mapFromRow);
  }

  Future<int> insertImage(String url, int serialNo, int gid, double height,
      double width, String path, int downloadStatusIndex) {
    return customInsert(
      'insert into image\r\nvalues (:url, :serialNo, :gid, :height, :width, :path, :downloadStatusIndex)',
      variables: [
        Variable<String>(url),
        Variable<int>(serialNo),
        Variable<int>(gid),
        Variable<double>(height),
        Variable<double>(width),
        Variable<String>(path),
        Variable<int>(downloadStatusIndex)
      ],
      updates: {image},
    );
  }

  Future<int> updateImage(int downloadStatusIndex, String url) {
    return customUpdate(
      'update image\r\nset downloadStatusIndex = :downloadStatusIndex\r\nwhere url = :url',
      variables: [Variable<int>(downloadStatusIndex), Variable<String>(url)],
      updates: {image},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> deleteImage(String url) {
    return customUpdate(
      'delete\r\nfrom image\r\nwhere url = :url',
      variables: [Variable<String>(url)],
      updates: {image},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> deleteImagesWithGid(int gid) {
    return customUpdate(
      'delete\r\nfrom image\r\nwhere gid = :gid',
      variables: [Variable<int>(gid)],
      updates: {image},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [galleryDownloaded, image];
}

class SelectGallerysWithImagesResult {
  final int gid;
  final String token;
  final String title;
  final String category;
  final int pageCount;
  final String galleryUrl;
  final String uploader;
  final String publishTime;
  final int galleryDownloadStatusIndex;
  final String? url;
  final int? serialNo;
  final double? height;
  final double? width;
  final String? path;
  final int? imageDownloadStatusIndex;
  SelectGallerysWithImagesResult({
    required this.gid,
    required this.token,
    required this.title,
    required this.category,
    required this.pageCount,
    required this.galleryUrl,
    required this.uploader,
    required this.publishTime,
    required this.galleryDownloadStatusIndex,
    this.url,
    this.serialNo,
    this.height,
    this.width,
    this.path,
    this.imageDownloadStatusIndex,
  });
}