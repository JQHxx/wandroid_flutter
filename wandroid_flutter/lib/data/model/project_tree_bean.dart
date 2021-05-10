//
//  ProjectTreeBean.dart
//
//
//  Created by JSONConverter on 2021/05/10.
//  Copyright © 2021年 JSONConverter. All rights reserved.
//

import 'package:json_annotation/json_annotation.dart';

part 'project_tree_bean.g.dart';

@JsonSerializable()
class ProjectTreeBean extends Object {

	@JsonKey(name: 'data')
	List<ProjectTreeData> data;

	@JsonKey(name: 'errorCode')
	int errorCode;

	@JsonKey(name: 'errorMsg')
	String errorMsg;

	ProjectTreeBean(this.data,this.errorCode,this.errorMsg,);

	factory ProjectTreeBean.fromJson(Map<String, dynamic> srcJson) => _$ProjectTreeBeanFromJson(srcJson);

	Map<String, dynamic> toJson() => _$ProjectTreeBeanToJson(this);

}

@JsonSerializable()
class ProjectTreeData extends Object {

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

	ProjectTreeData(this.courseId,this.id,this.name,this.order,this.parentChapterId,this.userControlSetTop,this.visible,);

	factory ProjectTreeData.fromJson(Map<String, dynamic> srcJson) => _$ProjectTreeDataFromJson(srcJson);

	Map<String, dynamic> toJson() => _$ProjectTreeDataToJson(this);

}
