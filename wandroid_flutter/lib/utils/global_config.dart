import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/chapters_api.dart';

/// 初始化全局配置
class GloabConfig {
  static Future<void> init() async {
    Get.lazyPut(() => ChaptersApi());
  }
}
