// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavigationBean _$NavigationBeanFromJson(Map<String, dynamic> json) {
  return NavigationBean(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$NavigationBeanToJson(NavigationBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

NavigationData _$NavigationDataFromJson(Map<String, dynamic> json) {
  return NavigationData(
    (json['articles'] as List)
        ?.map((e) => e == null
            ? null
            : NavigationArticles.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['cid'] as int,
    json['name'] as String,
  );
}

Map<String, dynamic> _$NavigationDataToJson(NavigationData instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'cid': instance.cid,
      'name': instance.name,
    };

NavigationArticles _$NavigationArticlesFromJson(Map<String, dynamic> json) {
  return NavigationArticles(
    json['apkLink'] as String,
    json['audit'] as int,
    json['author'] as String,
    json['canEdit'] as bool,
    json['chapterId'] as int,
    json['chapterName'] as String,
    json['collect'] as bool,
    json['courseId'] as int,
    json['desc'] as String,
    json['descMd'] as String,
    json['envelopePic'] as String,
    json['fresh'] as bool,
    json['host'] as String,
    json['id'] as int,
    json['link'] as String,
    json['niceDate'] as String,
    json['niceShareDate'] as String,
    json['origin'] as String,
    json['prefix'] as String,
    json['projectLink'] as String,
    json['publishTime'] as int,
    json['realSuperChapterId'] as int,
    json['selfVisible'] as int,
    json['shareDate'] as int,
    json['shareUser'] as String,
    json['superChapterId'] as int,
    json['superChapterName'] as String,
    (json['tags'] as List)?.map((e) => e as String)?.toList(),
    json['title'] as String,
    json['type'] as int,
    json['userId'] as int,
    json['visible'] as int,
    json['zan'] as int,
  );
}

Map<String, dynamic> _$NavigationArticlesToJson(NavigationArticles instance) =>
    <String, dynamic>{
      'apkLink': instance.apkLink,
      'audit': instance.audit,
      'author': instance.author,
      'canEdit': instance.canEdit,
      'chapterId': instance.chapterId,
      'chapterName': instance.chapterName,
      'collect': instance.collect,
      'courseId': instance.courseId,
      'desc': instance.desc,
      'descMd': instance.descMd,
      'envelopePic': instance.envelopePic,
      'fresh': instance.fresh,
      'host': instance.host,
      'id': instance.id,
      'link': instance.link,
      'niceDate': instance.niceDate,
      'niceShareDate': instance.niceShareDate,
      'origin': instance.origin,
      'prefix': instance.prefix,
      'projectLink': instance.projectLink,
      'publishTime': instance.publishTime,
      'realSuperChapterId': instance.realSuperChapterId,
      'selfVisible': instance.selfVisible,
      'shareDate': instance.shareDate,
      'shareUser': instance.shareUser,
      'superChapterId': instance.superChapterId,
      'superChapterName': instance.superChapterName,
      'tags': instance.tags,
      'title': instance.title,
      'type': instance.type,
      'userId': instance.userId,
      'visible': instance.visible,
      'zan': instance.zan,
    };
