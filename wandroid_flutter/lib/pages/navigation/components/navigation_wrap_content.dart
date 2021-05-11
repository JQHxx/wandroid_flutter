import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../navigation_controller.dart';
import 'navigation_wrap_item.dart';

// GetView<NavigationController>
class NavigationWrapContent extends StatelessWidget {
  final String name;
  NavigationWrapContent({Key key, this.name}) : super(key: key);

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
    List tempList = [];
    tempList = _list.map((item) => NavigationWrapItem(text: item)).toList();
    tempList.add(NavigationWrapItem(text: this.name));
    return tempList;
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