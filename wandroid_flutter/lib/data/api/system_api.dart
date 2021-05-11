import 'package:wandroid_flutter/data/model/system_bean.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class SystemApi {
  Future<SystemBean> treeData() async {
    SystemBean response = await ApiClient().treeData();
    return response;
  }
}
