
import 'package:get/get.dart';
import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/api/collect_api.dart';

class CollectRepository {
  final CollectApi api = Get.find<CollectApi>();
  Future<HttpResponse<String>> collectList(int page) {
    return api.collectList(page);
  }

}