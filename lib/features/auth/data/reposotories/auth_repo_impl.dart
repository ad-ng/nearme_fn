import 'package:nearme_fn/features/auth/data/datasources/remote/auth_api_service.dart';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:nearme_fn/features/auth/domain/repository/auth_repos.dart';

class AuthRepoImpl implements AuthRepos {
  @override
  Future<UserModel> login(String email, String password) {
    return AuthApiService().login(email, password);
  }
}
