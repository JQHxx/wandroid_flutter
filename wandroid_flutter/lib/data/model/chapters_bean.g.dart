// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapters_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChaptersBean _$ChaptersBeanFromJson(Map<String, dynamic> json) {
  return ChaptersBean(
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ChaptersData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$ChaptersBeanToJson(ChaptersBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

ChaptersData _$ChaptersDataFromJson(Map<String, dynamic> json) {
  return ChaptersData(
    json['courseId'] as int,
    json['id'] as int,
    json['name'] as String,
    json['order'] as int,
    json['parentChapterId'] as int,
    json['userControlSetTop'] as bool,
    json['visible'] as int,
  );
}

Map<String, dynamic> _$ChaptersDataToJson(ChaptersData instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible,
    };
