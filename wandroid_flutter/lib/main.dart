import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/retrofit/base_dio.dart';
import 'package:wandroid_flutter/pages/main/main_binding.dart';
import 'package:wandroid_flutter/pages/main/main_page.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';
import 'package:wandroid_flutter/theme/app_theme.dart';
import 'package:wandroid_flutter/utils/dependency_injection.dart';
import 'package:wandroid_flutter/utils/global_config.dart';
import 'package:wandroid_flutter/utils/screen_adapter.dart';

import 'lang/TranslationService.dart';

void main() async {
  //ScreenAdapter.init(Get.context);
  WidgetsFlutterBinding.ensureInitialized();
  // 屏幕方向
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  CookieDir.init();
  await GloabConfig.init();
  // 全局依赖注入
  await DenpendencyInjection.init();

  if (Platform.isAndroid) {
    // 沉浸式状态栏
    /*
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    */
  }

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    translations: TranslationService(),
    locale: TranslationService.locale, // 将会按照此处指定的语言翻译
    fallbackLocale:
        TranslationService.fallbackLocale, // 添加一个回调语言选项，以备上面指定的语言翻译不存在
    builder: (context, child) => Scaffold(
      // Global GestureDetector that will dismiss the keyboard
      body: GestureDetector(
        onTap: () {
          hideKeyboard(context);
        },
        child: child,
      ),
    ),
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    initialBinding: MainBinding(),
    home: MainPage(),
  ));
}

void hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus.unfocus();
  }
}
