import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';

///
class HomeApiService {
  final Dio _dio = DioService.instance.dio;
}
