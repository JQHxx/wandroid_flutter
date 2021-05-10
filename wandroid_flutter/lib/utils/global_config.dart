import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/chapters_api.dart';
import 'package:wandroid_flutter/data/api/home_api.dart';
import 'package:wandroid_flutter/data/api/project_api.dart';
import 'package:wandroid_flutter/pages/home/home_controller.dart';
import 'package:wandroid_flutter/pages/project/project_controller.dart';
import 'package:wandroid_flutter/pages/public/public_controller.dart';

/// 初始化全局配置
class GloabConfig {
  static Future<void> init() async {
    // 首页
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => HomeApi());

    // 项目
    Get.lazyPut(() => ProjectController());
    Get.lazyPut(() => ProjectApi());
  
    // 公众号
    Get.lazyPut(() => PublicController());
    Get.lazyPut(() => ChaptersApi());
  }
}
