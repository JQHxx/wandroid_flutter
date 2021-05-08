import 'package:get/get.dart';
import 'package:wandroid_flutter/data/repositories/chapters_repository.dart';

class PublicController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    requestData();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  requestData() {
    LoginRepository().wxarticleChapters().then((value) {});
  }
}
