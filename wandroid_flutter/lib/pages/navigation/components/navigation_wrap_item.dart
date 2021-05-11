import 'package:flutter/material.dart';

class NavigationWrapItem extends StatelessWidget {
  NavigationWrapItem({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(5),
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFF0000), width: 0.5),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        //color: Colors.orange,
        child: Text(this.text),
      ),
      onTap: () {
        print("tap" + this.text);
      },
    );
  }
}
