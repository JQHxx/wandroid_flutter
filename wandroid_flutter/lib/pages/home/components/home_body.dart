import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/widgets/refresh_widget.dart';

import '../home_controller.dart';

class PublicBody extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return RefreshWidget(
      controller: controller.refreshController,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: () {
        controller.requestHomeBannerData();
        controller.requestArticlesData();
      },
      onLoading: () {
        controller.requestMoreArticlesData();
      },
      child: ListView.builder(
        itemBuilder: (context, position) {
          if (0 == position) {
            return Container(
              height: 180,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    controller.banners[index].imagePath,
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: controller.banners.length,
                autoplayDelay: 5000,
              ),
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Text(
                      controller.articles[position - 1].title,
                      style: TextStyle(fontSize: 14),
                      maxLines: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, bottom: 10, top: 10),
                    child: Text(
                      controller.articles[position - 1].niceShareDate,
                      style: TextStyle(fontSize: 13),
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            );
          }
        },
        itemCount: controller.articles.length + 1,
      ),
    );
  }
}
