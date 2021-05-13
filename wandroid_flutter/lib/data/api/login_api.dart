/*
 * @Author: your name
 * @Date: 2020-12-08 20:57:12
 * @LastEditTime: 2020-12-13 01:21:11
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /todo/lib/data/api/login_api.dart
 */
import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class LoginApi {
  Future<HttpResponse<String>> login(String username, String password) async {
    HttpResponse response = await ApiClient().login(username, password);
    //throw ApiException("错误信息");
    return response;
  }

  Future<HttpResponse<String>> register(
      String username, String password, String repassword) async {
    HttpResponse response =
        await ApiClient().register(username, password, repassword);
    //throw ApiException("错误信息");
    return response;
  }
}
