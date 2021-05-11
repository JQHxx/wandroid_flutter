import 'package:flutter/material.dart';
import 'package:wandroid_flutter/data/model/system_bean.dart';

class SystemWrapItem extends StatelessWidget {
  SystemWrapItem({
    Key key,
    @required this.children,
  }) : super(key: key);

  final SystemChildren children;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFF0000), width: 0.5),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        //color: Colors.orange,
        child: Text(this.children.name, style: TextStyle(fontSize: 10),),
      ),
      onTap: () {
        print("tap" + this.children.name);
      },
    );
  }
}
