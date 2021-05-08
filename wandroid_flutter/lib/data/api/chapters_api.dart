import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';
import 'package:wandroid_flutter/utils/app_log.dart';

class ChaptersApi {
  Future<HttpResponse<String>> wxarticleChapters() async {
    HttpResponse<String> response = await ApiClient().wxarticleChapters();
    AppLogger.d(response.data);
    return response;
  }
}
