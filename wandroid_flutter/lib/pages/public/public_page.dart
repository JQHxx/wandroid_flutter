import 'package:flutter/material.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';

class PublicPage extends StatefulWidget {
  PublicPage({Key key}) : super(key: key);

  @override
  _PublicPageState createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage> {
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
        title: Text("公众号"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: Drawer(
        child: MainDrawerWidget(),
      ),
    );
  }
}
