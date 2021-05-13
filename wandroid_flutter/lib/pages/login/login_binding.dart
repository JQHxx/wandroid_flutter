import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/login_api.dart';
import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => LoginApi());
  }
}
