import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/collect_api.dart';
import 'collect_controller.dart';

class CollectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CollectController());
    Get.lazyPut(() => CollectApi());
  }
}
