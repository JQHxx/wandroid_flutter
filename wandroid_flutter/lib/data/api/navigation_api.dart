
import 'package:wandroid_flutter/data/model/navigation_bean.dart';
import 'package:wandroid_flutter/data/retrofit/api_client.dart';

class NavigationApi {
  Future<NavigationBean> naviData() async {
    NavigationBean response = await ApiClient().naviData();
    return response;
  }

}