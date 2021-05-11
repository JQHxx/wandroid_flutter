import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wandroid_flutter/data/model/home_article_bean.dart';
import 'package:wandroid_flutter/data/model/home_banner_bean.dart';
import 'package:wandroid_flutter/data/repositories/home_repository.dart';

class HomeController extends GetxController {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  List<HomeBannerData> banners = [];

  int currentPage = 0;
  List<HomeArticleDatas> articles = [];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    refreshController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    requestHomeBannerData();
    requestArticlesData();
  }

  requestHomeBannerData() {
    HomeRepository().homeBanner().then((value) {
      refreshController.refreshCompleted();
      banners = value.data;
      update();
    }).catchError((error) {});
  }

  requestArticlesData() {
    currentPage = 0;
    HomeRepository().homeArticles(currentPage).then((value) {
      refreshController.refreshCompleted();
      articles = value.data.datas;
      update();
    });
  }

  requestMoreArticlesData() {
    currentPage += 1;
    HomeRepository().homeArticles(currentPage).then((value) {
      refreshController.loadComplete();
      articles.addAll(value.data.datas);
      update();
    });
  }
}
