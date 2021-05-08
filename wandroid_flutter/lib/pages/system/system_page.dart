import 'package:flutter/material.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';

class SystemPage extends StatefulWidget {
  SystemPage({Key key}) : super(key: key);

  @override
  _SystemPageState createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> {
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
        title: Text("体系"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}
