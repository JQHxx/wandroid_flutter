import 'package:flutter/material.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';

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
              icon: Icon(Icons.wifi_tethering),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        title: Text("项目"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}