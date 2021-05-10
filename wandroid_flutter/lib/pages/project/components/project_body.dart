import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../project_controller.dart';

class ProjectBody extends GetView<ProjectController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          child: TabBar(
              isScrollable: true,
              labelColor: Colors.red,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorPadding: EdgeInsets.fromLTRB(8, 0, 8, 5),
              controller: controller.tabController,
              tabs: controller.tabs),
        ),
        Expanded(
            child: TabBarView(
          controller: controller.tabController,
          children: controller.contents,
        ))
      ],
    );
  }
}
