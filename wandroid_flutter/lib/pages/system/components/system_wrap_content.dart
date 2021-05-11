import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';

import 'system_wrap_item.dart';


class SystemWrapContent extends StatelessWidget {
  final List <SystemChildren> datas;
  SystemWrapContent({Key key, this.datas}) : super(key: key);

  List<Widget> _generateList() {
    List tempList = [];
    tempList = this.datas.map((item) => SystemWrapItem(children: item)).toList();
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
