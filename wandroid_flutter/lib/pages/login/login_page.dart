import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/login/login_controller.dart';

import 'components/login_body.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) => Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("登录"),
      ),
      body: LoginBody(),
    ));
  }
}