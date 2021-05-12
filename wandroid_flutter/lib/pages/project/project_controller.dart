import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:wandroid_flutter/data/repositories/project_repository.dart';
import 'package:wandroid_flutter/pages/project/components/project_list_content.dart';
import 'package:wandroid_flutter/utils/app_log.dart';
import 'package:wandroid_flutter/utils/notification_center.dart';
import 'package:wandroid_flutter/widgets/alive_keeper.dart';

class ProjectController extends GetxController {
  int currentPage = 1;
  List<Widget> tabs = [];
  List tabDatas = [];
  List<Widget> contents = [];
  TabController tabController = TabController(
    length: 0,
    vsync: NavigatorState(),
  );

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    NotificationCenter.instance.addObserver("home", "ProjectController", (object) {
      AppLogger.d(object);
    });
    requestProjectTreeData();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  requestProjectTreeData() {
    ProjectRepository().projectTree().then((value) {
      tabDatas = value.data;
      tabController = TabController(
        length: tabDatas.length,
        vsync: NavigatorState(),
      );
      tabs = tabDatas
          .map((e) => Tab(
                text: e.name,
              ))
          .toList();
      contents = tabDatas
          .map((e) => Aliveer(child: ProjectListContent(cid: e.id)))
          .toList();
      update();
    });
  }
}
