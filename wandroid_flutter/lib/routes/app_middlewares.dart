import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int priority = 0;

  RouteAuthMiddleware({@required this.priority});

  @override
  RouteSettings redirect(String route) {
    bool isNeedLogin = true;
    if (isNeedLogin) {
      // 加入 AuthService
      Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
      return RouteSettings(name: Routes.LOGIN);
    } else {
      return null;
    }
  }
}
