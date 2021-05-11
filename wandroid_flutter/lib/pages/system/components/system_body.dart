import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'system_cell.dart';

import '../system_controller.dart';

class SystemBody extends GetView<SystemController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return SystemCell(data: controller.datas[position]);
      },
      itemCount: controller.datas.length,
    );
  }
}
