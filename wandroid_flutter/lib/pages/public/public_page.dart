import 'dart:math';

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
        body: GridView.builder(
            itemCount: controller.datas.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 3),
            itemBuilder: (context, position) {
              return Container(
                color: Color.fromARGB(
                  255,
                  Random.secure().nextInt(200),
                  Random.secure().nextInt(200),
                  Random.secure().nextInt(200),
                ),
                alignment: Alignment.center,
                child: Text(controller.datas[position].name),
              );
            }),
        drawer: Drawer(
          child: MainDrawerWidget(),
        ),
      ),
    );
  }
}
