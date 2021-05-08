//
//  ChaptersBean.dart
//
//
//  Created by JSONConverter on 2021/05/08.
//  Copyright © 2021年 JSONConverter. All rights reserved.
//

import 'package:json_annotation/json_annotation.dart';

part 'chapters_bean.g.dart';

@JsonSerializable()
class ChaptersBean extends Object {

	@JsonKey(name: 'data')
	List<ChaptersData> data;

	@JsonKey(name: 'errorCode')
	int errorCode;

	@JsonKey(name: 'errorMsg')
	String errorMsg;

	ChaptersBean(this.data,this.errorCode,this.errorMsg,);

	factory ChaptersBean.fromJson(Map<String, dynamic> srcJson) => _$ChaptersBeanFromJson(srcJson);

	Map<String, dynamic> toJson() => _$ChaptersBeanToJson(this);

}

@JsonSerializable()
class ChaptersData extends Object {

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

	ChaptersData(this.courseId,this.id,this.name,this.order,this.parentChapterId,this.userControlSetTop,this.visible,);

	factory ChaptersData.fromJson(Map<String, dynamic> srcJson) => _$ChaptersDataFromJson(srcJson);

	Map<String, dynamic> toJson() => _$ChaptersDataToJson(this);

}
