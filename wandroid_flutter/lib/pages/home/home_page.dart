import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

import 'components/home_body.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                centerTitle: false,
                leading: Builder(builder: (context) {
                  return IconButton(
                      icon: Icon(Icons.wifi_tethering),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                }),
                title: Text("首页"),
                actions: [
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Get.toNamed(Routes.SEARCH);
                      })
                ],
              ),
              body: PublicBody(),
              drawer: Drawer(
                child: MainDrawerWidget(),
              ),
            ));
  }
}
