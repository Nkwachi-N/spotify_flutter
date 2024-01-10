import 'package:dio/dio.dart';

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
