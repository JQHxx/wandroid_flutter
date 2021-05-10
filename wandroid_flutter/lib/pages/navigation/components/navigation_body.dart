import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../navigation_controller.dart';
import 'navigation_wrap_content.dart';

class NavigationBody extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          child: ListView.builder(
            itemBuilder: (context, position) {
              return GestureDetector(
                child: Container(
                  color: controller.currentSelectIndex == position
                      ? Colors.white
                      : Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      controller.currentSelectIndex == position
                          ? Container()
                          : Container(
                              margin: EdgeInsets.only(right: 3),
                              color: Colors.red,
                              width: 2,
                              height: 15,
                            ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(controller.leftTabs[position].name),
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
            children: [controller.currentContentWidget],
          ),
        ))
      ],
    );
  }
}
