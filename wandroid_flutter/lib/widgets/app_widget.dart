import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Color backgroundColor;
  final double radius;
  final Border border;
  final Alignment alignment;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final List<BoxShadow> boxShadow;

  AppWidget(
      {Key key,
      this.height,
      this.width,
      @required this.child,
      this.backgroundColor = Colors.transparent,
      this.radius = 0,
      this.border,
      this.alignment = Alignment.center,
      this.padding,
      this.boxShadow, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      alignment: alignment,
      decoration: BoxDecoration(
          color: backgroundColor,
          border:
              this.border ?? Border.all(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: child,
    );
  }
}
