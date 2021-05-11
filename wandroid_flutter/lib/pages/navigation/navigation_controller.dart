import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/model/navigation_bean.dart';
import 'package:wandroid_flutter/data/repositories/navigation_repository.dart';
import 'package:wandroid_flutter/widgets/alive_keeper.dart';

import 'components/navigation_wrap_content.dart';

class NavigationController extends GetxController {
  int currentSelectIndex = 0;
  Map<int, Widget> tabContents = Map<int, Widget>();
  List<NavigationData> leftTabs = [];
  Widget currentContentWidget = Container();

  changeItem(position) {
    currentSelectIndex = position;
    currentContentWidget = tabContents[leftTabs[currentSelectIndex].cid];
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
      leftTabs.forEach((element) {
        tabContents[element.cid] =
            Aliveer(child: NavigationWrapContent(name: element.name));
      });
      currentSelectIndex = 0;
      currentContentWidget = tabContents[leftTabs[currentSelectIndex].cid];
      update();
    });
  }
}
