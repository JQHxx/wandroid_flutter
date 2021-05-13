import 'package:flutter/material.dart';

class CDrawerCell extends StatelessWidget {
  final Function onTap;
  const CDrawerCell({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        child: Row(
          children: [
            Expanded(
                child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 30,
                  height: 30,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text("data"))
              ],
            )),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
