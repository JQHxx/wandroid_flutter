import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wandroid_flutter/data/model/project_list_bean.dart';
import 'package:wandroid_flutter/data/repositories/project_repository.dart';
import 'package:wandroid_flutter/utils/app_log.dart';
import 'package:wandroid_flutter/widgets/app_image_widget.dart';
import 'package:wandroid_flutter/widgets/refresh_widget.dart';
import 'package:wandroid_flutter/widgets/webview_browser.dart';

class ProjectListContent extends StatefulWidget {
  final int cid;
  ProjectListContent({Key key, this.cid}) : super(key: key);

  @override
  _ProjectListContentState createState() => _ProjectListContentState();
}

class _ProjectListContentState extends State<ProjectListContent> {
  int currentPage = 1;
  List<ProjectListDatas> datas = [];
  RefreshController refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    requestProjectListData(widget.cid);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshWidget(
      controller: refreshController,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: () {
        requestProjectListData(widget.cid);
      },
      onLoading: () {
        requestMoreProjectListData(widget.cid);
      },
      child: ListView.builder(
        itemBuilder: (context, position) {
          return GestureDetector(
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 140,
                    child: AppImageWidget(
                      imageUrl: datas[position].envelopePic,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //子组件的在交叉轴的对齐方式为起点
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              datas[position].title,
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              datas[position].desc,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(datas[position].niceDate),
                      )
                    ],
                  ))
                ],
              ),
            ),
            onTap: () {
              AppLogger.d(datas[position].link);
              Get.to(WebViewBrowser(), arguments: datas[position].link);
            },
          );
        },
        itemCount: datas.length,
      ),
    );
  }

  requestProjectListData(cid) {
    currentPage = 1;
    ProjectRepository().projectList(currentPage, cid).then((value) {
      refreshController.refreshCompleted();
      if (value.data.over) {
        refreshController.loadNoData();
      }
      setState(() {
        datas = value.data.datas;
      });
    });
  }

  requestMoreProjectListData(cid) {
    currentPage += 1;
    ProjectRepository().projectList(currentPage, cid).then((value) {
      refreshController.loadComplete();
      if (value.data.over) {
        refreshController.loadNoData();
      }
      setState(() {
        datas.addAll(value.data.datas);
      });
    });
  }
}
