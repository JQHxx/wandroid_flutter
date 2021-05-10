
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/navigation_api.dart';
import 'package:wandroid_flutter/data/model/navigation_bean.dart';

class NavigationRepository {

  final NavigationApi api = Get.find<NavigationApi>();

  Future<NavigationBean> naviData() {
    return api.naviData();
  }
}