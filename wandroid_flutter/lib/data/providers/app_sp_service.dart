import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class AppSpController extends GetxService {
  Future<SharedPreferences> init() async {
    return await SharedPreferences.getInstance();
  }
}
