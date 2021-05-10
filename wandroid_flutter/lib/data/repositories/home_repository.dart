import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/home_api.dart';
import 'package:wandroid_flutter/data/model/home_article_bean.dart';
import 'package:wandroid_flutter/data/model/home_banner_bean.dart';

class HomeRepository {
  final HomeApi api = Get.find<HomeApi>();

  Future<HomeBannerBean> homeBanner() {
    return api.homeBanner();
  }

  Future<HomeArticleBean> homeArticles(page) {
    return api.homeArticles(page);
  }
}
