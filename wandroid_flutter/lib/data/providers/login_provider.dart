
import 'package:wandroid_flutter/data/local/local_login_model_reposity.dart';

class LoginProvider {
  bool isLogin() {
    return LocalLoginModelRepository.getLoginModel() != null;
  }
}
