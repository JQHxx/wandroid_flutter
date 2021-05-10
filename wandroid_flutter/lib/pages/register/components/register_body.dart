import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/register/register_controller.dart';
import 'package:wandroid_flutter/theme/app_theme.dart';
import 'package:wandroid_flutter/widgets/app_button.dart';
import 'package:wandroid_flutter/widgets/app_text_input.dart';

class RegisterBody extends GetView<RegisterController> {
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
                Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          child: Row(
            children: [
              Container(
                width: 65,
                child: Text("确认密码"),
              ),
              Expanded(
                  child: AppTextInput(
                text: '确认密码',
                password: true,
                controller: controller.surePasswordController,
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
          buttonTitle: "注册",
          height: 50,
          tapEvent: () {},
        )
      ],
    );
  }
}
