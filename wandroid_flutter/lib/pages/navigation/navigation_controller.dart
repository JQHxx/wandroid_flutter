import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/model/navigation_bean.dart';
import 'package:wandroid_flutter/data/repositories/navigation_repository.dart';
import 'package:wandroid_flutter/widgets/alive_keeper.dart';

import 'components/navigation_wrap_content.dart';

class NavigationController extends GetxController {
  int currentSelectIndex = 0;
  List<Map<String, Widget>> tabContents = [];
  List<NavigationData> leftTabs = [];
  Widget currentContentWidget = Container();

  changeItem(position) {
    currentSelectIndex = position;
    currentContentWidget = tabContents[currentSelectIndex][leftTabs[currentSelectIndex].cid];
    update();
  }

  @override
  void onReady() {
    super.onReady();
    requestLeftTabsData();
  }

  requestLeftTabsData() {
    NavigationRepository().naviData().then((value) {
      leftTabs = value.data;
      tabContents = leftTabs.map((e) {
        Map map = Map();
        map[e.cid] = Aliveer(child: NavigationWrapContent());
        return map;
      }).toList();
      currentSelectIndex = 0;
      currentContentWidget = tabContents[currentSelectIndex][leftTabs[currentSelectIndex].cid];
      update();
    });
  }
}
