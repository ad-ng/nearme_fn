import 'package:nearme_fn/features/auth/data/models/user_model.dart';

///
abstract class AuthRepos {
  /// a function to log in a user
  Future<UserModel> login(String email, String password);
}
