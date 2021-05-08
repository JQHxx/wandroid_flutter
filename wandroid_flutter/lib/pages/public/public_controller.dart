import 'package:get/get.dart';
import 'package:wandroid_flutter/data/model/chapters_bean.dart';
import 'package:wandroid_flutter/data/repositories/chapters_repository.dart';

class PublicController extends GetxController {
  List<ChaptersData> datas = [];
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
    LoginRepository().wxarticleChapters().then((value) {
      print(value.data.length);
      datas = value.data;
      update();
    });
  }
}
