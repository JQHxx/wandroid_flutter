import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

class ProjectPage extends StatefulWidget {
  ProjectPage({Key key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {
          Get.toNamed(Routes.SEARCH);
        })],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}