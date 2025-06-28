import 'dart:convert';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// a class to perform all activities related to local user
class UserPreferences {
  /// Save user to SharedPreferences
  Future<void> saveLocalUser(UserModel user) async {
    final preference = await SharedPreferences.getInstance();
    final userJson = json.encode(user.toMap());
    await preference.setString('user', userJson);
  }

  /// Get user from SharedPreferences
  Future<UserModel?> getLocalUser() async {
    final preference = await SharedPreferences.getInstance();
    final userJson = preference.getString('user');

    if (userJson != null) {
      final userMap = json.decode(userJson) as Map<String, dynamic>;
      return UserModel.fromMap(userMap);
    }
    return null;
  }

  /// Remove the user from SharedPreferences
  Future<void> removeLocalUser() async {
    final preference = await SharedPreferences.getInstance();
    await preference.remove('user');
  }
}
