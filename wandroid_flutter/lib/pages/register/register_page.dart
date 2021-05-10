import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/register_body.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                centerTitle: false,
                titleSpacing: 0,
                title: Text("注册"),
              ),
              body: RegisterBody(),
            ));
  }
}
