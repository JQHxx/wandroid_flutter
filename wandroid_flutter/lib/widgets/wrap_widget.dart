import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  final List<Widget> children;
  final double spacing;
  final double runSpacing;
  const WrapWidget(
      {Key key, @required this.children, this.spacing = 0, this.runSpacing = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: children,
      spacing: spacing,
      runSpacing: runSpacing,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
    );
  }
}
