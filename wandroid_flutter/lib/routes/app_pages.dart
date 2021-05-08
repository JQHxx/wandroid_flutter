
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    /*
    GetPage(
        name: Routes.MAIN,
        page: () => MainPage(),
        binding: MainBinding(),
        transition: Transition.zoom,
        middlewares: [
          //RouteAuthMiddleware(priority: 1),
        ]),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SETTING,
      page: () => SettingPage(),
    ),
    */
  ];
}

/* ModalRoute.withName里放你需要保存
Get.offNamedUntil(
      "/a",
      ModalRoute.withName("/x")
);
*/
