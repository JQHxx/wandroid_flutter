import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class CollectApi {
  Future<HttpResponse<String>> collectList(int page) async {
    HttpResponse response = await ApiClient().collectList(page);
    //throw ApiException("错误信息");
    return response;
  }
}
