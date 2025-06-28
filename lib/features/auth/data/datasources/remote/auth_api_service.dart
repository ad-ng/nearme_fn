import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';

class AuthApiService {
  final Dio _dio = DioService.instance.dio;

  Future login() async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {'email': 'adolphengoga@gmail.com', 'password': 'test@123'},
      );

      print(response.data);
      return response.data;
    } on DioException catch (e) {
      return e.message.toString();
    } catch (e) {
      return Future.error(e);
    }
  }
}
