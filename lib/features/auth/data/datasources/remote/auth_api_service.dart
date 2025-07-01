import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/dioService.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/tokenstore.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/user_preferences.dart';
import 'package:nearme_fn/features/auth/data/models/category_model.dart';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// a class that performs all api calls related to auth
class AuthApiService {
  final Dio _dio = DioService.instance.dio;

  ///logging in a user
  Future<UserModel> login(String email, String password) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {'email': email, 'password': password},
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

  ///registering a user
  Future<UserModel> registering(UserModel userModel) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/register',
        data: userModel.toMap(),
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

  ///continue with google a user
  Future<UserModel> continueWithGoogle(String accessToken) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/google',
        data: {'accessToken': accessToken},
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

  ///updating user names
  Future<UserModel> updateNames(String firstName, String lastName) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/user/names',
        data: {'firstName': firstName, 'lastName': lastName},
      );

      final dataJson = response.data?['data'] as Map<String, dynamic>;
      final currentUser = UserModel.fromMap(dataJson);

      await UserPreferences().saveLocalUser(currentUser);

      return currentUser;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }

  ///updating country
  Future<UserModel> updateCountry(String country) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/user/country',
        data: {'country': country},
      );

      final dataJson = response.data?['data'] as Map<String, dynamic>;
      final currentUser = UserModel.fromMap(dataJson);

      await UserPreferences().saveLocalUser(currentUser);

      return currentUser;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }

  ///updating user travel status
  Future<UserModel> updateTravelStatus(String travelStatus) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/user/status',
        data: {'Status': travelStatus},
      );

      final dataJson = response.data?['data'] as Map<String, dynamic>;
      final currentUser = UserModel.fromMap(dataJson);

      await UserPreferences().saveLocalUser(currentUser);

      return currentUser;
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }

  /// Fetching all categories
  Future<List<CategoryModel>> fetchAllCategories() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('/category');

      final dataJson = response.data?['data'];

      if (dataJson != null && dataJson is List) {
        return dataJson
            .map((json) => CategoryModel.fromMap(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Expected a list but got ${dataJson.runtimeType}');
      }
    } on DioException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Something went wrong: $e');
    }
  }
}
