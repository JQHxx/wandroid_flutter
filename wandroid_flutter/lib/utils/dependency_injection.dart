import 'package:get/get.dart';
import 'package:wandroid_flutter/data/providers/app_sp_service.dart';
import 'package:wandroid_flutter/data/providers/login_provider.dart';

/// 依赖注入
class DenpendencyInjection {
  static Future<void> init() async {
    // // shared_preferences
    await Get.putAsync(() => AppSpController().init());
    // // dio配置信息
    // await Get.putAsync(() => DioConfigController().init());
    // //  网络请求
    // Get.put(DioClient());
    // // 登录信息提供者
    Get.put(LoginProvider());

    // Get.put(MainController());
  }
}
