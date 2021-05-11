import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController surePasswordController = TextEditingController();
  
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
    surePasswordController.dispose();
    super.onClose();
  }
}
