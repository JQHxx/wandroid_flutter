import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../public_controller.dart';

class PublicBody extends GetView<PublicController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: controller.datas.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 3),
        itemBuilder: (context, position) {
          return Container(
            color: Color.fromARGB(
              255,
              Random.secure().nextInt(200),
              Random.secure().nextInt(200),
              Random.secure().nextInt(200),
            ),
            alignment: Alignment.center,
            child: Text(controller.datas[position].name),
          );
        });
  }
}
