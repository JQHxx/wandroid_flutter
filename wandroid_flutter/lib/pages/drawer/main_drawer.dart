import 'package:flutter/material.dart';

class MainDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('username'),
        accountEmail: Text('username@163.com'),
        currentAccountPicture: CircleAvatar(
          child: Icon(Icons.home),
        ),
        onDetailsPressed: () {},
        otherAccountsPictures: <Widget>[
          CircleAvatar(child: Icon(Icons.settings)),
        ],
        decoration: BoxDecoration(color: Colors.green),
      ),
      ListTile(
          title: Text('设置'),
          leading: Icon(Icons.settings),
          trailing: Icon(Icons.arrow_forward_ios))
    ]));
  }
}
