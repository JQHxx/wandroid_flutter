import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';
import 'package:wandroid_flutter/theme/app_theme.dart';
import 'package:wandroid_flutter/widgets/app_button.dart';
import 'package:wandroid_flutter/widgets/app_text_input.dart';
import '../login_controller.dart';

class LoginBody extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          child: Row(
            children: [
              Container(
                width: 50,
                child: Text("用户名"),
              ),
              Expanded(
                  child: AppTextInput(
                text: '请输入用户名',
                controller: controller.userNameController,
              ))
            ],
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          child: Row(
            children: [
              Container(
                width: 50,
                child: Text("密码"),
              ),
              Expanded(
                  child: AppTextInput(
                text: '请输入密码',
                password: true,
                controller: controller.passwordController,
              ))
            ],
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        ),
        AppButton(
          margin: EdgeInsets.only(top: 15, left: 10, right: 10),
          buttonColor: kPrimaryColor,
          buttonTitle: "登录",
          height: 50,
          onTap: () {
            Get.back(result: '登录成功');
          },
        ),
        Container(
          height: 50,
          alignment: Alignment.center,
          child: GestureDetector(
            child: Text(
              "注册账号",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            onTap: () {
              Get.toNamed(Routes.REGISTER);
            },
          ),
        )
      ],
    );
  }
}
