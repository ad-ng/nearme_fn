import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nearme_fn/features/auth/data/models/user_model.dart';
import 'package:nearme_fn/features/auth/domain/repository/auth_repos.dart';

///
class AuthCubit extends Cubit<AuthState> {
  ///
  AuthCubit(this._authRepos) : super(AuthInitial());
  final AuthRepos _authRepos;

  ///
  Future<dynamic> login(String email, String password) async {
    emit(AuthLoading());
    try {
      final response = await _authRepos.login(email, password);
      emit(LoginSuccess(response));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  ///
  Future<dynamic> registering(UserModel userModel) async {
    emit(AuthLoading());
    try {
      final response = await _authRepos.registering(userModel);
      emit(RegisterSuccess(response));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}

/// building block of all other states
abstract class AuthState {}

/// state to run initially when cubit called
class AuthInitial extends AuthState {}

/// loading state
class AuthLoading extends AuthState {}

/// to run at success
class LoginSuccess extends AuthState {
  ///
  LoginSuccess(this.response);

  ///
  final UserModel response;
}

/// to run at success
class RegisterSuccess extends AuthState {
  ///
  RegisterSuccess(this.response);

  ///
  final UserModel response;
}

/// when errors occurred
class AuthError extends AuthState {
  ///
  AuthError(this.error);

  ///error from api
  String error;
}
