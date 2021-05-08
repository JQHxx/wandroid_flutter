import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
    /*
    String headers = await SpUtil.getString('Authorization');
    options.headers.addAll({'Authorization': headers});
    */

    return options;
  }
}
