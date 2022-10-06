import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/services/storage/storage_service.dart';

class UnAuthorizedErrorHandler extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
   //TODO: immplement
    super.onError(err, handler);
  }
}

class AuthorizationTokenInjector extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final  storageService = StorageService();

    bool requiresToken = options.headers['requiresToken'] ?? false;
    if(requiresToken) {
      String? token = await storageService.getAccessToken();
      print('Token is $token');
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    super.onRequest(options, handler);
  }
}
