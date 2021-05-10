import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/* 使用方法
TextEditingController nameTextController = TextEditingController();
AppTextInput(controller: nameTextController, text: '请输入姓名', onChanged: (value) {
  nameTextController.text = value;
});
*/

class AppTextInput extends StatelessWidget {
  // final常量
  final String text;
  final bool password;
  final Object onChanged;
  final int maxLines;
  final double height;
  final TextEditingController controller;
  // Border(bottom: BorderSide(width: 1, color: Colors.black12))
  final Border border;
  final double borderRadius;
  final TextStyle style;

  AppTextInput(
      {Key key,
      this.text = "输入内容",
      this.password = false,
      this.onChanged,
      this.maxLines = 1,
      this.height = 68,
      this.controller,
      this.border,
      this.borderRadius = 30, this.style})
      : super(key: key);

  // 解决文本内容不居中的问题： 1、contentPadding: EdgeInsets.only(top: 0, bottom: 0)   2、设置透明边框
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,

      // 文本框
      child: TextField(
        controller: controller,
        maxLines: this.maxLines,
        obscureText: this.password,
        style: this.style ?? TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: this.text,
          contentPadding: EdgeInsets.only(top: 0, bottom: 0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(this.borderRadius),
              borderSide: BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        onChanged: this.onChanged,
      ),
      // 底部线条
      decoration: BoxDecoration(border: this.border),
    );
  }
}
