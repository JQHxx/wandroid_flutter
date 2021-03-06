import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wandroid_flutter/data/model/chapters_bean.dart';
import 'package:wandroid_flutter/data/model/home_article_bean.dart';
import 'package:wandroid_flutter/data/model/home_banner_bean.dart';
import 'package:wandroid_flutter/data/model/navigation_bean.dart';
import 'package:wandroid_flutter/data/model/project_list_bean.dart';
import 'package:wandroid_flutter/data/model/project_tree_bean.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';
import 'base_dio.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: 'https://www.wanandroid.com')
abstract class ApiClient {
  factory ApiClient({Dio dio, String baseUrl}) {
    dio ??= BaseDio.getInstance().getDio();
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  // ignore: slash_for_doc_comments
  /**
   * 获取首页广告
   */
  @GET("/banner/json")
  Future<HomeBannerBean> homeBanner();

  // ignore: slash_for_doc_comments
  /**
   * 获取首页文章列表
   */
  @GET("/article/list/{page}/json")
  Future<HomeArticleBean> homeArticles(@Path() int page);

  // ignore: slash_for_doc_comments
  /**
   * 获取项目分类
   */
  @GET("/project/tree/json")
  Future<ProjectTreeBean> projectTree();

  // ignore: slash_for_doc_comments
  /**
   * 获取项目分类
   */
  @GET("/project/list/{page}/json")
  Future<ProjectListBean> projectList(@Path() int page, @Query("cid") int cid);

  // ignore: slash_for_doc_comments
  /**
   * 体系
   */
  @GET("/tree/json")
  Future<SystemBean> treeData();

  // ignore: slash_for_doc_comments
  /**
   * 导航数据
   */
  @GET("/navi/json")
  Future<NavigationBean> naviData();

  // ignore: slash_for_doc_comments
  /**
   * 获取公众号列表
   */
  @GET("/wxarticle/chapters/json")
  Future<ChaptersBean> wxarticleChapters();


    // ignore: slash_for_doc_comments
  /**
   * 注册
   */
  @POST("/user/register")
  Future<HttpResponse<String>> register(@Field() String username, @Field() String password, @Field() String repassword);

    // ignore: slash_for_doc_comments
  /**
   * 登录
   */
  @POST("/user/login")
  Future<HttpResponse<String>> login(@Query('username') String username, @Query('password') String password);

  // ignore: slash_for_doc_comments
  /**
   * 退出登录
   */
  @GET("/user/logout/json")
  Future<HttpResponse<String>> logout();

  // ignore: slash_for_doc_comments
  /**
   * 收藏列表(用来验证cookie的问题)
   */
  @GET("/lg/collect/list/{page}/json")
  Future<HttpResponse<String>> collectList(@Path() int page);


}
