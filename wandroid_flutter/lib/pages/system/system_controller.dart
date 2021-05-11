import 'package:get/get.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';
import 'package:wandroid_flutter/data/repositories/system_repository.dart';
import 'package:wandroid_flutter/utils/extension/get_extension.dart';

class SystemController extends GetxController {
  List<SystemData> datas = [];
  @override
  void onReady() {
    super.onReady();
    requestTreeData();
  }

  requestTreeData() {
    Get.showCLoading();
    SystemRepository().treeData().then((value) {
      Get.hideCLoading();
      datas = value.data;
      update();
    });
  }
}
