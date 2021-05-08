import 'package:flutter/material.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text("首页"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}