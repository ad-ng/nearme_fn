import 'package:dio/dio.dart';
import 'package:nearme_fn/features/auth/data/datasources/local/tokenstore.dart';

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
    //options.headers['Content-Type'] = 'application/json';
    super.onRequest(options, handler);
  }
}
