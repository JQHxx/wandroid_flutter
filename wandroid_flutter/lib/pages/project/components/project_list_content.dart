import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wandroid_flutter/data/model/project_list_bean.dart';
import 'package:wandroid_flutter/data/repositories/project_repository.dart';
import 'package:wandroid_flutter/widgets/refresh_widget.dart';

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
          return Container(
            height: 100,
            child: Text(datas[position].title),
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
      setState(() {
        datas = value.data.datas;
      });
    });
  }

  requestMoreProjectListData(cid) {
    currentPage += 1;
    ProjectRepository().projectList(currentPage, cid).then((value) {
      refreshController.loadComplete();
      setState(() {
        datas.addAll(value.data.datas);
      });
    });
  }
}
