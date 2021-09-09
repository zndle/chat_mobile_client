import 'package:dio/dio.dart';

import 'http.dart';

class TestApi {
  static Future<Response> sayHello() {
    return dio.get('/test/hello');
  }
}
