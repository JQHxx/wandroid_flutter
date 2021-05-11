import 'package:flutter/material.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';

import 'system_wrap_content.dart';

class SystemCell extends StatefulWidget {
  final SystemData data;
  SystemCell({Key key, this.data}) : super(key: key);

  @override
  _SystemCellState createState() => _SystemCellState();
}

class _SystemCellState extends State<SystemCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 5, color: Color(0xffe5e5e5)))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            margin: EdgeInsets.only(bottom: 15),
            child: Text(widget.data.name, style: TextStyle(fontSize: 15),),
          ),
          Container(
            child: SystemWrapContent(
              datas: widget.data.children,
            ),
          )
        ],
      ),
    );
  }
}
