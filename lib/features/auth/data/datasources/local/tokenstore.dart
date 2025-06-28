import 'package:shared_preferences/shared_preferences.dart';

/// A class to perform all activities related to token
class TokenStore {
  const TokenStore._();
  static const String _tokenKey = 'TOKEN';

  /// a function to save a token from api
  static Future<void> setToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_tokenKey, token);
  }

  /// a function to get a saved token
  static Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_tokenKey);
  }

  /// a function to clear or deleted a saved token
  static Future<void> clear() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
