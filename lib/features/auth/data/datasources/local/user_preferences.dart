import 'dart:convert';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  /// Save user to SharedPreferences
  Future<void> saveLocalUser(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = json.encode(user.toMap());
    await prefs.setString('user', userJson);
  }

  /// Get user from SharedPreferences
  Future<UserModel?> getLocalUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');

    if (userJson != null) {
      final userMap = json.decode(userJson) as Map<String, dynamic>;
      return UserModel.fromMap(userMap);
    }
    return null;
  }

  /// Remove the user from SharedPreferences
  Future<void> removeLocalUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user');
  }
}
