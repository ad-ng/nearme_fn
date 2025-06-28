import 'package:dio/dio.dart';
import 'package:nearme_fn/conf/dio/errormodel.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('Request Path: ${err.requestOptions.path}');
    print('Request Extra: ${err.requestOptions.extra}');

    final useErrorInterceptor =
        err.requestOptions.extra['useErrorInterceptor'] ?? true;
    print('useErrorInterceptor: $useErrorInterceptor');

    // if (!useErrorInterceptor) {
    //   print('ErrorInterceptor: Skipping error handling for this request');
    //   handler.next(err);
    //   return;
    // }

    final apiError = _handleError(err);

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: apiError,
        message: apiError.message.join('\n'),
      ),
    );
  }

  ErrorModel _handleError(DioException error) {
    if (error.response != null && error.response!.data != null) {
      try {
        final errorData = error.response!.data;

        if (errorData is ErrorModel) return errorData;

        if (errorData is Map<String, dynamic>) {
          return ErrorModel.fromMap(errorData);
        }

        if (errorData is String) {
          return ErrorModel.fromJson(errorData);
        }

        print('Unexpected error response format: $errorData');
        return ErrorModel(
          message: ['Unexpected error format'],
          error: 'Unexpected Error',
          statusCode: error.response?.statusCode ?? 500,
        );
      } catch (e) {
        print('Failed to parse error response: $e');
        return ErrorModel(
          message: ['Failed to parse error response'],
          error: 'Parsing Error',
          statusCode: error.response?.statusCode ?? 500,
        );
      }
    } else {
      return ErrorModel(
        message: [error.message ?? 'Unknown error occurred'],
        error: 'Network Error',
        statusCode: error.response?.statusCode ?? 500,
      );
    }
  }
}
