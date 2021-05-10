import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';
import 'package:wandroid_flutter/theme/app_theme.dart';

class MainDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('username'),
        accountEmail: Text('username@163.com'),
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(
            child: Icon(Icons.home),
          ),
          onTap: () {
            Get.toNamed(Routes.LOGIN);
          },
        ),
        onDetailsPressed: () {},
        otherAccountsPictures: <Widget>[
          CircleAvatar(child: Icon(Icons.settings)),
        ],
        decoration: BoxDecoration(color: kPrimaryColor),
      ),
      ListTile(
          title: Text('设置'),
          leading: Icon(Icons.settings),
          trailing: Icon(Icons.arrow_forward_ios))
    ]));
  }
}
