import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/tokenstore.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/user_preferences.dart';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';

/// a class that performs all api calls related to auth
class AuthApiService {
  final Dio _dio = DioService.instance.dio;

  ///logging in a user
  Future<UserModel> login() async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {'email': 'adolphengoga@gmail.com', 'password': 'test@123'},
      );

      final token = response.data?['token'] as String;
      final dataJson = response.data?['data'] as Map<String, dynamic>;
      final currentUser = UserModel.fromMap(dataJson);

      await TokenStore.setToken(token);
      await UserPreferences().saveLocalUser(currentUser);

      return currentUser;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
}
