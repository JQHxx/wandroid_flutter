// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_tree_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectTreeBean _$ProjectTreeBeanFromJson(Map<String, dynamic> json) {
  return ProjectTreeBean(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ProjectTreeData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$ProjectTreeBeanToJson(ProjectTreeBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

ProjectTreeData _$ProjectTreeDataFromJson(Map<String, dynamic> json) {
  return ProjectTreeData(
    json['courseId'] as int,
    json['id'] as int,
    json['name'] as String,
    json['order'] as int,
    json['parentChapterId'] as int,
    json['userControlSetTop'] as bool,
    json['visible'] as int,
  );
}

Map<String, dynamic> _$ProjectTreeDataToJson(ProjectTreeData instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible,
    };
