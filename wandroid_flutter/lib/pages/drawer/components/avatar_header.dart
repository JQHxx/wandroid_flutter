import 'package:flutter/material.dart';
import 'package:wandroid_flutter/widgets/app_widget.dart';

class AvatarHeader extends StatelessWidget {
  const AvatarHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Row(
            children: [
              AppWidget(
                margin: EdgeInsets.only(left: 10),
                constraints: BoxConstraints.expand(
                  width: 50,
                  height: 50
                ),
                backgroundColor: Colors.orange,
                borderRadius: BorderRadius.circular(25),
                child: Text("12"),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(child: Text("用户名用户名用户名用户名用户名用户名用户名用户名用户名用户名用户名用户名用户名用户名", maxLines: 1,),)
              
            ],
          )),
          Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
