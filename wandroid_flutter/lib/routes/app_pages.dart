import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/collect/collect_binding.dart';
import 'package:wandroid_flutter/pages/collect/collect_page.dart';
import 'package:wandroid_flutter/pages/login/login_binding.dart';
import 'package:wandroid_flutter/pages/login/login_page.dart';
import 'package:wandroid_flutter/pages/main/main_binding.dart';
import 'package:wandroid_flutter/pages/main/main_page.dart';
import 'package:wandroid_flutter/pages/register/register_binding.dart';
import 'package:wandroid_flutter/pages/register/register_page.dart';
import 'package:wandroid_flutter/pages/search/search_binding.dart';
import 'package:wandroid_flutter/pages/search/search_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => MainPage(), binding: MainBinding()),
    GetPage(
        name: Routes.SEARCH,
        page: () => SearchPage(),
        binding: SearchBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterPage(),
        binding: RegisterBinding()),
            GetPage(
        name: Routes.COLLECT,
        page: () => CollectPage(),
        binding: CollectBinding()),
  ];
}

/* ModalRoute.withName里放你需要保存
Get.offNamedUntil(
      "/a",
      ModalRoute.withName("/x")
);
*/
