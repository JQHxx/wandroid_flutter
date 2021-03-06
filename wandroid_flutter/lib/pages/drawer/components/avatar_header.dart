import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';
import 'package:wandroid_flutter/utils/app_log.dart';
import 'package:wandroid_flutter/utils/notification_center.dart';
import 'package:wandroid_flutter/widgets/app_widget.dart';

class AvatarHeader extends StatelessWidget {
  const AvatarHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.white,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Row(
              children: [
                AppWidget(
                  margin: EdgeInsets.only(left: 10),
                  constraints: BoxConstraints.expand(width: 50, height: 50),
                  backgroundColor: Colors.orange,
                  borderRadius: BorderRadius.circular(25),
                  child: Text("12"),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "HJQ",
                    maxLines: 1,
                  ),
                )
              ],
            )),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
      onTap: () {
        //NotificationCenter.instance.postNotification("home", "登录");
        Get.toNamed(Routes.LOGIN).then((value) {
          AppLogger.d(value);
        });
      },
    );
  }
}
