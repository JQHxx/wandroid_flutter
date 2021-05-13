/*
 * @Author: your name
 * @Date: 2020-12-08 20:57:12
 * @LastEditTime: 2020-12-13 01:22:52
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /todo/lib/data/repositories/login_repository.dart
 */
import 'package:get/get.dart';
import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/api/login_api.dart';
import 'package:wandroid_flutter/data/model/login_bean.dart';

class LoginRepository {
  final LoginApi api = Get.find<LoginApi>();

  Future<HttpResponse<String>> login(String username, String password) {
    return api.login(username, password);
  }

  Future<HttpResponse<String>> register(
      String username, String password, String repassword) {
    return api.register(username, password, repassword);
  }
}
