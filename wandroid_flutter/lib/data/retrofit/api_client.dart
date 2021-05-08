import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wandroid_flutter/data/model/chapters_bean.dart';
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
 * 获取公众号列表
 */
  @GET("/wxarticle/chapters/json")
  Future<ChaptersBean> wxarticleChapters();
}
