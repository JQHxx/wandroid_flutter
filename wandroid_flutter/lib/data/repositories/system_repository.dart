
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/system_api.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';

class SystemRepository {
  final SystemApi api = Get.find<SystemApi>();

  Future<SystemBean> treeData() async {
    return api.treeData();
  }
}
