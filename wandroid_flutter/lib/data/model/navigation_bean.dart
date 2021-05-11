//
//  NavigationBean.dart
//
//
//  Created by JSONConverter on 2021/05/10.
//  Copyright © 2021年 JSONConverter. All rights reserved.
//

import 'package:json_annotation/json_annotation.dart';

part 'navigation_bean.g.dart';

@JsonSerializable()
class NavigationBean extends Object {

	@JsonKey(name: 'data')
	List<NavigationData> data;

	@JsonKey(name: 'errorCode')
	int errorCode;

	@JsonKey(name: 'errorMsg')
	String errorMsg;

	NavigationBean(this.data,this.errorCode,this.errorMsg,);

	factory NavigationBean.fromJson(Map<String, dynamic> srcJson) => _$NavigationBeanFromJson(srcJson);

	Map<String, dynamic> toJson() => _$NavigationBeanToJson(this);

}

@JsonSerializable()
class NavigationData extends Object {

	@JsonKey(name: 'articles')
	List<NavigationArticles> articles;

	@JsonKey(name: 'cid')
	int cid;

	@JsonKey(name: 'name')
	String name;

	NavigationData(this.articles,this.cid,this.name,);

	factory NavigationData.fromJson(Map<String, dynamic> srcJson) => _$NavigationDataFromJson(srcJson);

	Map<String, dynamic> toJson() => _$NavigationDataToJson(this);

}

@JsonSerializable()
class NavigationArticles extends Object {

	@JsonKey(name: 'apkLink')
	String apkLink;

	@JsonKey(name: 'audit')
	int audit;

	@JsonKey(name: 'author')
	String author;

	@JsonKey(name: 'canEdit')
	bool canEdit;

	@JsonKey(name: 'chapterId')
	int chapterId;

	@JsonKey(name: 'chapterName')
	String chapterName;

	@JsonKey(name: 'collect')
	bool collect;

	@JsonKey(name: 'courseId')
	int courseId;

	@JsonKey(name: 'desc')
	String desc;

	@JsonKey(name: 'descMd')
	String descMd;

	@JsonKey(name: 'envelopePic')
	String envelopePic;

	@JsonKey(name: 'fresh')
	bool fresh;

	@JsonKey(name: 'host')
	String host;

	@JsonKey(name: 'id')
	int id;

	@JsonKey(name: 'link')
	String link;

	@JsonKey(name: 'niceDate')
	String niceDate;

	@JsonKey(name: 'niceShareDate')
	String niceShareDate;

	@JsonKey(name: 'origin')
	String origin;

	@JsonKey(name: 'prefix')
	String prefix;

	@JsonKey(name: 'projectLink')
	String projectLink;

	@JsonKey(name: 'publishTime')
	int publishTime;

	@JsonKey(name: 'realSuperChapterId')
	int realSuperChapterId;

	@JsonKey(name: 'selfVisible')
	int selfVisible;

	@JsonKey(name: 'shareDate')
	int shareDate;

	@JsonKey(name: 'shareUser')
	String shareUser;

	@JsonKey(name: 'superChapterId')
	int superChapterId;

	@JsonKey(name: 'superChapterName')
	String superChapterName;

	@JsonKey(name: 'tags')
	List<String> tags;

	@JsonKey(name: 'title')
	String title;

	@JsonKey(name: 'type')
	int type;

	@JsonKey(name: 'userId')
	int userId;

	@JsonKey(name: 'visible')
	int visible;

	@JsonKey(name: 'zan')
	int zan;

	NavigationArticles(this.apkLink,this.audit,this.author,this.canEdit,this.chapterId,this.chapterName,this.collect,this.courseId,this.desc,this.descMd,this.envelopePic,this.fresh,this.host,this.id,this.link,this.niceDate,this.niceShareDate,this.origin,this.prefix,this.projectLink,this.publishTime,this.realSuperChapterId,this.selfVisible,this.shareDate,this.shareUser,this.superChapterId,this.superChapterName,this.tags,this.title,this.type,this.userId,this.visible,this.zan,);

	factory NavigationArticles.fromJson(Map<String, dynamic> srcJson) => _$NavigationArticlesFromJson(srcJson);

	Map<String, dynamic> toJson() => _$NavigationArticlesToJson(this);

}
