import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/app_variables.dart';
import 'package:nearme_fn/conf/dio/errorInterceptor.dart';
import 'package:nearme_fn/conf/dio/headerinterceptor.dart';

///all general dio configurations
class DioService {
  DioService._privateConstructor();

  /// initializing dio singleton
  static final DioService instance = DioService._privateConstructor();

  /// instantiating dio
  Dio dio = Dio();

  /// a function to connect dio globally in an app
  void setup() {
    dio.options.baseUrl = LocalVariables().homeUrl;

    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);

    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    dio.interceptors.add(ErrorInterceptor());
    dio.interceptors.add(HeaderInterceptor());
  }
}
