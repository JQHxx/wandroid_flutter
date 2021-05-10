import 'package:wandroid_flutter/data/model/project_list_bean.dart';
import 'package:wandroid_flutter/data/model/project_tree_bean.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class ProjectApi {
  Future<ProjectTreeBean> projectTree() async {
    ProjectTreeBean response = await ApiClient().projectTree();
    return response;
  }

  Future<ProjectListBean> projectList(int page, int cid) async {
    ProjectListBean response = await ApiClient().projectList(page, cid);
    return response;
  }
}
