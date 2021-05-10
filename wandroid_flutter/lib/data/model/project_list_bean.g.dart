// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectListBean _$ProjectListBeanFromJson(Map<String, dynamic> json) {
  return ProjectListBean(
    json['data'] == null
        ? null
        : ProjectListData.fromJson(json['data'] as Map<String, dynamic>),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$ProjectListBeanToJson(ProjectListBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

ProjectListData _$ProjectListDataFromJson(Map<String, dynamic> json) {
  return ProjectListData(
    json['curPage'] as int,
    (json['datas'] as List)
        ?.map((e) => e == null
            ? null
            : ProjectListDatas.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['offset'] as int,
    json['over'] as bool,
    json['pageCount'] as int,
    json['size'] as int,
    json['total'] as int,
  );
}

Map<String, dynamic> _$ProjectListDataToJson(ProjectListData instance) =>
    <String, dynamic>{
      'curPage': instance.curPage,
      'datas': instance.datas,
      'offset': instance.offset,
      'over': instance.over,
      'pageCount': instance.pageCount,
      'size': instance.size,
      'total': instance.total,
    };

ProjectListDatas _$ProjectListDatasFromJson(Map<String, dynamic> json) {
  return ProjectListDatas(
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
    (json['tags'] as List)
        ?.map((e) => e == null
            ? null
            : ProjectListTags.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['title'] as String,
    json['type'] as int,
    json['userId'] as int,
    json['visible'] as int,
    json['zan'] as int,
  );
}

Map<String, dynamic> _$ProjectListDatasToJson(ProjectListDatas instance) =>
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

ProjectListTags _$ProjectListTagsFromJson(Map<String, dynamic> json) {
  return ProjectListTags(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ProjectListTagsToJson(ProjectListTags instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
