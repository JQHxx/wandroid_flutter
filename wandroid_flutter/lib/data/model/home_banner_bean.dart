//
//  HomeBannerBean.dart
//
//
//  Created by JSONConverter on 2021/05/08.
//  Copyright © 2021年 JSONConverter. All rights reserved.
//

import 'package:json_annotation/json_annotation.dart';

part 'home_banner_bean.g.dart';

@JsonSerializable()
class HomeBannerBean extends Object {

	@JsonKey(name: 'data')
	List<HomeBannerData> data;

	@JsonKey(name: 'errorCode')
	int errorCode;

	@JsonKey(name: 'errorMsg')
	String errorMsg;

	HomeBannerBean(this.data,this.errorCode,this.errorMsg,);

	factory HomeBannerBean.fromJson(Map<String, dynamic> srcJson) => _$HomeBannerBeanFromJson(srcJson);

	Map<String, dynamic> toJson() => _$HomeBannerBeanToJson(this);

}

@JsonSerializable()
class HomeBannerData extends Object {

	@JsonKey(name: 'desc')
	String desc;

	@JsonKey(name: 'id')
	int id;

	@JsonKey(name: 'imagePath')
	String imagePath;

	@JsonKey(name: 'isVisible')
	int isVisible;

	@JsonKey(name: 'order')
	int order;

	@JsonKey(name: 'title')
	String title;

	@JsonKey(name: 'type')
	int type;

	@JsonKey(name: 'url')
	String url;

	HomeBannerData(this.desc,this.id,this.imagePath,this.isVisible,this.order,this.title,this.type,this.url,);

	factory HomeBannerData.fromJson(Map<String, dynamic> srcJson) => _$HomeBannerDataFromJson(srcJson);

	Map<String, dynamic> toJson() => _$HomeBannerDataToJson(this);

}
