import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/pages/system/components/system_body.dart';
import 'package:wandroid_flutter/pages/system/system_controller.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

class SystemPage extends StatefulWidget {
  SystemPage({Key key}) : super(key: key);

  @override
  _SystemPageState createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SystemController>(
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
                title: Text("体系"),
                actions: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Get.toNamed(Routes.SEARCH);
                      })
                ],
              ),
              body: SystemBody(),
              drawerEdgeDragWidth: 0,
              drawer: Drawer(
                child: MainDrawerWidget(),
              ),
            ));
  }
}
