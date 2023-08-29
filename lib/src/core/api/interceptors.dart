import 'package:dio/dio.dart';

class UnAuthorizedErrorHandler extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    //TODO: immplement
    super.onError(err, handler);
  }
}

abstract class AuthorizationTokenInjector extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    bool requiresToken = options.headers['requiresToken'] ?? false;
    if (requiresToken) {
      String? token = await getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    super.onRequest(options, handler);
  }

  Future<String?> getToken();
}
