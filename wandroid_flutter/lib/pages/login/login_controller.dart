import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/repositories/login_repository.dart';

class LoginController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  requestLogin() {
    LoginRepository()
        .login(userNameController.text, passwordController.text)
        .then((value) {
      Get.back(result: '登录成功');
    });
  }
}
