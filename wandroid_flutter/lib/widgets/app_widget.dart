import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final BoxBorder border;
  final Alignment alignment;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final List<BoxShadow> boxShadow;
  final Function onTap;
  final BoxConstraints constraints;

  AppWidget(
      {Key key,
      this.height,
      this.width,
      @required this.child,
      this.backgroundColor = Colors.transparent,
      this.border,
      this.alignment = Alignment.center,
      this.padding,
      this.boxShadow,
      this.margin,
      this.onTap,
      this.constraints,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: constraints,
        width: width,
        height: height,
        padding: padding ?? EdgeInsets.zero,
        margin: margin ?? EdgeInsets.zero,
        alignment: alignment,
        decoration: BoxDecoration(
            color: backgroundColor,
            border:
                this.border ?? Border.all(width: 0, color: Colors.transparent),
            borderRadius: borderRadius ?? BorderRadius.circular(0),
            boxShadow: boxShadow ?? []),
        child: child,
      ),
    );
  }
}
