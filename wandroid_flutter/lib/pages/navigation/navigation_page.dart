import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

import 'components/navigation_body.dart';
import 'navigation_controller.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({Key key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
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
                title: Text("导航"),
                titleSpacing: 0,
                actions: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Get.toNamed(Routes.SEARCH);
                      })
                ],
              ),
              body: NavigationBody(),
              drawerEdgeDragWidth: 0,
              drawer: Drawer(
                child: MainDrawerWidget(),
              ),
            ));
  }
}
