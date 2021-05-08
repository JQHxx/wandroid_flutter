import 'package:flutter/material.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({Key key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
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
        title: Text("导航"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}