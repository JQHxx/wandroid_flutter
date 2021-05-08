import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/main_drawer.dart';
import 'package:wandroid_flutter/pages/public/public_controller.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';

class PublicPage extends StatefulWidget {
  PublicPage({Key key}) : super(key: key);

  @override
  _PublicPageState createState() => _PublicPageState();
}

class _PublicPageState extends State<PublicPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PublicController>(
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
          title: Text("公众号"),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Get.toNamed(Routes.SEARCH);
                })
          ],
        ),
        drawer: Drawer(
          child: MainDrawerWidget(),
        ),
      ),
    );
  }
}
