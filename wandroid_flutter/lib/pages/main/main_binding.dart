import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/main/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    //  MainController 必须全局初始化 不然报错：Null check operator used on a null value
    //Get.put(() => MainController());
  }
}
