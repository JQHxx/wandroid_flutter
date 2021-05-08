import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/widgets/Loading.dart';

extension GetExtension on GetInterface {
  // ignore: slash_for_doc_comments
  /** 实现加载弹窗
   * @params message 提示文字
   * @params barrierDismissible 是否允许背景点击移除
   */
  showCLoading({String message = "加载中...", barrierDismissible = false}) {
    if (Get.isDialogOpen) {
      Get.back();
    }
    Get.dialog(
      CLoadingDialog(
        message: message,
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  hideCLoading() {
    if (Get.isDialogOpen) {
      Get.back();
    }
  }

  toast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
