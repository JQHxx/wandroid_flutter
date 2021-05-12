import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonTitle;
  final Color buttonTitleColor;
  final Function onTap;
  final double height;
  final double width;
  final double radius;
  final EdgeInsets margin;
  final EdgeInsets padding;

  // 默认构造函数: 不能用下划线
  AppButton(
      {Key key,
      this.buttonColor = Colors.black,
      this.buttonTitle = "按钮",
      this.height = 68,
      this.onTap,
      this.radius = 10.0,
      this.margin,
      this.padding,
      this.buttonTitleColor = Colors.white,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        margin: this.margin ?? EdgeInsets.zero,
        padding: this.padding ?? EdgeInsets.zero,
        height: this.height,
        width: this.width,
        // 边框
        decoration: BoxDecoration(
            color: this.buttonColor,
            borderRadius: BorderRadius.circular(this.radius)),
        child: Center(
          child: Text("${this.buttonTitle}",
              style: TextStyle(color: this.buttonTitleColor)),
        ),
      ),
    );
  }
}
