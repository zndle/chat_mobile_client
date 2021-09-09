import 'package:dio/dio.dart';

import 'http.dart';

class AuthApi {
  static Future<Response> login(String username, String password) {
    return dio.post('/auth/login', data: {
      'username': username,
      'password': password,
    });
  }
}
