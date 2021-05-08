import 'package:get/get.dart';
import 'search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    //  MainController 必须全局初始化 不然报错：Null check operator used on a null value
    Get.lazyPut(() => SearchController());
  }
}
