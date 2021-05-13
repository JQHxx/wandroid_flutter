import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wandroid_flutter/data/repositories/collect_repository.dart';
import 'package:wandroid_flutter/utils/app_log.dart';

class CollectController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    requestData();
  }

  requestData() {
    CollectRepository().collectList(1).then((value) {
      AppLogger.d(value.data);
    });
  }
}
