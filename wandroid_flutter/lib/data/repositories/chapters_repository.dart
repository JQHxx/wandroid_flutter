import 'package:get/get.dart';
import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/api/chapters_api.dart';

class LoginRepository {
  final ChaptersApi api = Get.find<ChaptersApi>();

  Future<HttpResponse<String>> wxarticleChapters() {
    return api.wxarticleChapters();
  }
}