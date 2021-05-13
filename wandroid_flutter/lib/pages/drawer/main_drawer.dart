import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/pages/drawer/components/avatar_header.dart';
import 'package:wandroid_flutter/routes/app_pages.dart';
import 'components/cdrawer_cell.dart';

class MainDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Container(
        color: Color.fromRGBO(240, 240, 240, 1.0),
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          AvatarHeader(),
          SizedBox(
            height: 15,
          ),
          CDrawerCell(
            onTap: () {
              Get.toNamed(Routes.COLLECT);
            },
          ),
        ]),
      )),
    );
  }
}
