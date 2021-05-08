import 'package:get/get.dart';
import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/api/chapters_api.dart';
import 'package:wandroid_flutter/data/model/chapters_bean.dart';

class LoginRepository {
  final ChaptersApi api = Get.find<ChaptersApi>();

  Future<ChaptersBean> wxarticleChapters() {
    return api.wxarticleChapters();
  }
}