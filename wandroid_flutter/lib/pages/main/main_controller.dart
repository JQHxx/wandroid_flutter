import 'package:get/get.dart';
import 'main_state.dart';

class MainController extends GetxController {
  MainState state = MainState();

  changeIndex(int index) {
    state.index.value = index;
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
