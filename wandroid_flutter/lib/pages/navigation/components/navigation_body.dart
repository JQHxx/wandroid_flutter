import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/widgets/alive_keeper.dart';
import '../navigation_controller.dart';
import 'navigation_wrap_content.dart';

class NavigationBody extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          child: ListView.builder(
            itemBuilder: (context, position) {
              return GestureDetector(
                child: Container(
                  color: controller.currentSelectIndex == position
                      ? Colors.white
                      : Color.fromRGBO(240, 240, 240, 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        color: controller.currentSelectIndex == position
                            ? Colors.red
                            : Colors.transparent,
                        width: 2,
                        height: 15,
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 70),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Text(
                          controller.leftTabs[position].name,
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  controller.changeItem(position);
                },
              );
            },
            itemCount: controller.leftTabs.length,
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: ListView(
            children: [
              controller.currentContentWidget
            ],
          ),
        ))
      ],
    );
  }
}
