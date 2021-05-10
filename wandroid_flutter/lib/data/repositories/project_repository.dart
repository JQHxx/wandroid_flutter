import 'package:get/get.dart';
import 'package:wandroid_flutter/data/api/project_api.dart';
import 'package:wandroid_flutter/data/model/project_list_bean.dart';
import 'package:wandroid_flutter/data/model/project_tree_bean.dart';

class ProjectRepository {
  final ProjectApi api = Get.find<ProjectApi>();

  Future<ProjectTreeBean> projectTree() {
    return api.projectTree();
  }

  Future<ProjectListBean> projectList(int page, int cid) {
    return api.projectList(page, cid);
  }
}
