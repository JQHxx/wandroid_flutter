import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/pages/project/components/project_body.dart';
import 'package:wandroid_flutter/pages/project/project_controller.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

class ProjectPage extends StatefulWidget {
  ProjectPage({Key key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProjectController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                centerTitle: false,
                leading: Builder(builder: (context) {
                  return IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                }),
                title: Text("项目"),
                titleSpacing: 0,
                actions: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Get.toNamed(Routes.SEARCH);
                      })
                ],
              ),
              body: ProjectBody(),
              drawerEdgeDragWidth: 0,
              drawer: Drawer(
                child: MainDrawerWidget(),
              ),
            ));
  }
}
