// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemBean _$SystemBeanFromJson(Map<String, dynamic> json) {
  return SystemBean(
    (json['data'] as List)
        ?.map((e) =>
            e == null ? null : SystemData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['errorCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$SystemBeanToJson(SystemBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
    };

SystemData _$SystemDataFromJson(Map<String, dynamic> json) {
  return SystemData(
    (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : SystemChildren.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['courseId'] as int,
    json['id'] as int,
    json['name'] as String,
    json['order'] as int,
    json['parentChapterId'] as int,
    json['userControlSetTop'] as bool,
    json['visible'] as int,
  );
}

Map<String, dynamic> _$SystemDataToJson(SystemData instance) =>
    <String, dynamic>{
      'children': instance.children,
      'courseId': instance.courseId,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible,
    };

SystemChildren _$SystemChildrenFromJson(Map<String, dynamic> json) {
  return SystemChildren(
    json['courseId'] as int,
    json['id'] as int,
    json['name'] as String,
    json['order'] as int,
    json['parentChapterId'] as int,
    json['userControlSetTop'] as bool,
    json['visible'] as int,
  );
}

Map<String, dynamic> _$SystemChildrenToJson(SystemChildren instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'parentChapterId': instance.parentChapterId,
      'userControlSetTop': instance.userControlSetTop,
      'visible': instance.visible,
    };
