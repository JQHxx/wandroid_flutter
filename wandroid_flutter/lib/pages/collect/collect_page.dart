import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'collect_controller.dart';

class CollectPage extends StatelessWidget {
  const CollectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CollectController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: Text("收藏"),
              ),
            ));
  }
}
