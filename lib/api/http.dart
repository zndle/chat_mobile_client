import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

var opts = BaseOptions(
  baseUrl: 'http://10.0.2.2:1854/api',
  // baseUrl: 'http://192.168.1.101:1854/api',
  connectTimeout: 500,
);

var dio = Dio(opts);

updateToken(String token) async {
  var prefs = await SharedPreferences.getInstance();
  prefs.setString('jwt', token);
  opts = opts.copyWith(headers: <String, dynamic>{
    'Authorization': 'Bearer $token',
  });
  dio = Dio(opts);
}
