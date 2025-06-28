import 'package:dio/dio.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/tokenstore.dart';

/// a class to intercept all request to add a token
class HeaderInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await TokenStore.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}
