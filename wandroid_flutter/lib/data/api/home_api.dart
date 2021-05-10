import 'package:wandroid_flutter/data/model/home_article_bean.dart';
import 'package:wandroid_flutter/data/model/home_banner_bean.dart';
import 'package:wandroid_flutter/data/retrofit/api_exception.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class HomeApi {
  Future<HomeBannerBean> homeBanner() async {
    HomeBannerBean response = await ApiClient().homeBanner();
    //throw ApiException("错误信息");
    return response;
  }

  Future<HomeArticleBean> homeArticles(page) async {
    HomeArticleBean response = await ApiClient().homeArticles(page);
    return response;
  }
}
