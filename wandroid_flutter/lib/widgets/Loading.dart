import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CLoadingDialog extends StatelessWidget {
  String message;

  CLoadingDialog({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: new Center(
        //保证控件居中效果
        child: new SizedBox(
          width: 120.0,
          height: 120.0,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new CircularProgressIndicator(
                  strokeWidth: 3.0,
                  // backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: new Text(
                    message,
                    style: new TextStyle(fontSize: 13.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

