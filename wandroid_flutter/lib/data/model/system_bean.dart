//
//  SystemBean.dart
//
//
//  Created by JSONConverter on 2021/05/11.
//  Copyright © 2021年 JSONConverter. All rights reserved.
//

import 'package:json_annotation/json_annotation.dart';

part 'system_bean.g.dart';

@JsonSerializable()
class SystemBean extends Object {

	@JsonKey(name: 'data')
	List<SystemData> data;

	@JsonKey(name: 'errorCode')
	int errorCode;

	@JsonKey(name: 'errorMsg')
	String errorMsg;

	SystemBean(this.data,this.errorCode,this.errorMsg,);

	factory SystemBean.fromJson(Map<String, dynamic> srcJson) => _$SystemBeanFromJson(srcJson);

	Map<String, dynamic> toJson() => _$SystemBeanToJson(this);

}

@JsonSerializable()
class SystemData extends Object {

	@JsonKey(name: 'children')
	List<SystemChildren> children;

	@JsonKey(name: 'courseId')
	int courseId;

	@JsonKey(name: 'id')
	int id;

	@JsonKey(name: 'name')
	String name;

	@JsonKey(name: 'order')
	int order;

	@JsonKey(name: 'parentChapterId')
	int parentChapterId;

	@JsonKey(name: 'userControlSetTop')
	bool userControlSetTop;

	@JsonKey(name: 'visible')
	int visible;

	SystemData(this.children,this.courseId,this.id,this.name,this.order,this.parentChapterId,this.userControlSetTop,this.visible,);

	factory SystemData.fromJson(Map<String, dynamic> srcJson) => _$SystemDataFromJson(srcJson);

	Map<String, dynamic> toJson() => _$SystemDataToJson(this);

}

@JsonSerializable()
class SystemChildren extends Object {

	@JsonKey(name: 'courseId')
	int courseId;

	@JsonKey(name: 'id')
	int id;

	@JsonKey(name: 'name')
	String name;

	@JsonKey(name: 'order')
	int order;

	@JsonKey(name: 'parentChapterId')
	int parentChapterId;

	@JsonKey(name: 'userControlSetTop')
	bool userControlSetTop;

	@JsonKey(name: 'visible')
	int visible;

	SystemChildren(this.courseId,this.id,this.name,this.order,this.parentChapterId,this.userControlSetTop,this.visible,);

	factory SystemChildren.fromJson(Map<String, dynamic> srcJson) => _$SystemChildrenFromJson(srcJson);

	Map<String, dynamic> toJson() => _$SystemChildrenToJson(this);

}
