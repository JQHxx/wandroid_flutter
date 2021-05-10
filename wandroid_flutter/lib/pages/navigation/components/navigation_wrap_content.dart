import 'package:flutter/material.dart';

import 'navigation_wrap_item.dart';

class NavigationWrapContent extends StatefulWidget {
  NavigationWrapContent({Key key}) : super(key: key);

  @override
  _NavigationWrapContentState createState() => _NavigationWrapContentState();
}

class _NavigationWrapContentState extends State<NavigationWrapContent> {
  List<String> _list = [
    '盗墓笔记',
    '鬼吹灯',
    '这个书名是凑的',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '沙海',
    '藏海花',
    '这个书名是凑的',
    '藏海花'
  ];

  List<Widget> _generateList() {
    return _list.map((item) => NavigationWrapItem(text: item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Wrap(
        children: _generateList(),
        spacing: 5,
        runSpacing: 5,
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
    );
  }
}
