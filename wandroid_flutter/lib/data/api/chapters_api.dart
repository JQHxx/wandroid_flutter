import 'dart:convert';

import 'package:retrofit/dio.dart';
import 'package:wandroid_flutter/data/model/chapters_bean.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';
import 'package:wandroid_flutter/utils/app_log.dart';

class ChaptersApi {
  Future<ChaptersBean> wxarticleChapters() async {
    ChaptersBean response = await ApiClient().wxarticleChapters();
    return response;
  }
}
