import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/api/network_exceptions.dart';
import 'package:spotify_flutter/src/core/services/storage/storage_service.dart';
import '../constants/constants.dart';
import 'interceptors.dart';

class ApiClient {
  final _dio = Dio(
    BaseOptions(
      connectTimeout: 35000,
      receiveTimeout: 35000,
    ),
  )..interceptors.addAll([
      LogInterceptor(
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
      UnAuthorizedErrorHandler(),
      AuthorizationTokenInjector(),
    ]);

  ApiClient._privateConstructor();

  static final ApiClient _instance = ApiClient._privateConstructor();

  static ApiClient get instance => _instance;

  final _storageService = const StorageService();

  //TODO: Store client id
  Future<ApiResult<Response>> _get(
      {required String url,
      bool requiresToken = true,
      Map<String, dynamic>? queryParameters,
      int count = 0}) async {
    final Map<String, dynamic> header = {};
    if (requiresToken) {
      header['requiresToken'] = true;
    }

    queryParameters?.removeWhere((key, value) => value == null);

    if (count < 2) {
      try {
        final response = await _dio.get(
          url,
          queryParameters: queryParameters,
          options: Options(
            headers: header,
          ),
        );

        return ApiResult.success(data: response);
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken();
          if (refreshStatus) {
            return await _get(
              url: url,
              requiresToken: requiresToken,
              count: count + 1,
            );
          } else {
            return ApiResult.failure(
              error: NetworkExceptions.unauthorisedRequest(e.message),
            );
          }
        } else {
          return ApiResult.failure(error: NetworkExceptions.getDioException(e));
        }
      } catch (e) {
        return const ApiResult.failure(
            error: NetworkExceptions.unexpectedError());
      }
    } else {
      return const ApiResult.failure(
        error: NetworkExceptions.requestCancelled(),
      );
    }
  }

  //TODO: Store client id
  Future<ApiResult<Response>> _put({
    required String url,
    bool requiresToken = true,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    int count = 0,
  }) async {
    final Map<String, dynamic> header = {};
    if (requiresToken) {
      header['requiresToken'] = true;
    }

    queryParameters?.removeWhere((key, value) => value == null);
    body?.removeWhere((key, value) => value == null);

    if (count < 2) {
      try {
        final response = await _dio.put(
          url,
          queryParameters: queryParameters,
          data: body,
          options: Options(
            headers: header,
          ),
        );
        return ApiResult.success(data: response);
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken();
          if (refreshStatus) {
            return await _put(
              url: url,
              requiresToken: requiresToken,
              count: count + 1,
            );
          } else {
            return ApiResult.failure(
              error: NetworkExceptions.unauthorisedRequest(e.message),
            );
          }
        } else {
          return ApiResult.failure(error: NetworkExceptions.getDioException(e));
        }
      } catch (e) {
        return const ApiResult.failure(
            error: NetworkExceptions.unexpectedError());
      }
    } else {
      return const ApiResult.failure(
        error: NetworkExceptions.requestCancelled(),
      );
    }
  }

  Future<ApiResult<Response>> get({
    required String url,
    bool requiresToken = true,
    Map<String, dynamic>? queryParameters,
  }) =>
      _get(
        url: url,
        queryParameters: queryParameters,
        requiresToken: requiresToken,
      );

  Future<ApiResult<Response>> put({
    required String url,
    bool requiresToken = true,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _put(
          url: url,
          queryParameters: queryParameters,
          requiresToken: requiresToken,
          body: body);

  Future<ApiResult<Response>> delete({
    required String url,
    bool requiresToken = true,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) =>
      _delete(
          url: url,
          queryParameters: queryParameters,
          requiresToken: requiresToken,
          body: body);

  Future<ApiResult<Response>> post({
    required String url,
    required String clientId,
    bool requiresToken = true,
    Map<String, dynamic>? body,
    Map<String, String> header = const {},
    Options? options,
  }) =>
      _post(
        url: url,
        body: body,
        header: header,
        requiresToken: requiresToken,
      );

  Future<bool> _refreshToken() async {
    final refreshToken = await _storageService.getRefreshToken();

    final clientId = await _storageService.getClientId();

    final data = {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
      'client_id': clientId,
    };
    final header = {
      'requiresToken': false,
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    bool status = false;

    try {
      final response = await _post(
        url: Routes.autGetTokenUrl,
        requiresToken: false,
        header: header,
        body: data,
      );
      response.when(
          success: (success) {
            final accessToken = success.data[_storageService.kAccessToken];
            final refreshToken = success.data[_storageService.kRefreshToken];

            if (accessToken != null && refreshToken != null) {
              _storageService.saveToken(
                accessToken: accessToken,
                refreshToken: refreshToken,
              );
              status = true;
            }
          },
          failure: (failure) {});
    } catch (_) {}
    return status;
  }

  Future<ApiResult<Response>> _post({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic> header = const {},
    required bool requiresToken,
    int count = 0,
  }) async {
    if (count < 2) {
      if (requiresToken) {
        header['requiresToken'] = true;
      }

      try {
        final response =
            await _dio.post(url, data: body, options: Options(headers: header));
        return ApiResult.success(data: response);
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken();
          if (refreshStatus) {
            return await _post(
              url: url,
              requiresToken: requiresToken,
              count: count + 1,
            );
          } else {
            return ApiResult.failure(
              error: NetworkExceptions.unauthorisedRequest(e.message),
            );
          }
        } else {
          return ApiResult.failure(error: NetworkExceptions.getDioException(e));
        }
      } catch (e) {
        return const ApiResult.failure(
            error: NetworkExceptions.unexpectedError());
      }
    } else {
      return const ApiResult.failure(
        error: NetworkExceptions.unexpectedError(),
      );
    }
  }

  Future<ApiResult<Response>> _delete({
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    required bool requiresToken,
    int count = 0,
  }) async {
    if (count < 2) {
      final Map<String, dynamic> header = {};
      if (requiresToken) {
        header['requiresToken'] = true;
      }

      try {
        final response = await _dio.delete(
          url,
          queryParameters: queryParameters,
          data: body,
          options: Options(headers: header),
        );
        return ApiResult.success(
          data: response,
        );
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken();
          if (refreshStatus) {
            return await _delete(
              url: url,
              requiresToken: requiresToken,
              count: count + 1,
            );
          } else {
            return ApiResult.failure(
              error: NetworkExceptions.unauthorisedRequest(e.message),
            );
          }
        } else {
          return ApiResult.failure(error: NetworkExceptions.getDioException(e));
        }
      } catch (e) {
        return const ApiResult.failure(
            error: NetworkExceptions.unexpectedError());
      }
    } else {
      return const ApiResult.failure(
        error: NetworkExceptions.unexpectedError(),
      );
    }
  }
}
