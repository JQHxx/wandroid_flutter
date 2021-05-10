import 'package:get/get.dart';

class NavigationController extends GetxController {
  int currentSelectIndex = 0;

  changeItem(position) {
    currentSelectIndex = position;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
