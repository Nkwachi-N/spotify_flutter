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
      ),
      UnAuthorizedErrorHandler(),
      AuthorizationTokenInjector(),
    ]);



  ApiClient._privateConstructor();

  static final ApiClient _instance = ApiClient._privateConstructor();

  static ApiClient get instance => _instance;

  final _storageService = StorageService();

  Future<ApiResult<Map<String, dynamic>>> _get(
      {required String url,
      required String clientId,
      bool requiresToken = true,
      Map<String, String>? queryParameters,
      int count = 0}) async {

    final Map<String, dynamic> header = {};
    if(requiresToken) {
      header['requiresToken'] = true;
    }

    if (count < 2) {
      try {
        final response = await _dio.get(
          url,
          options: Options(
            headers: header,
          ),
        );
        return ApiResult.success(data: response.data);
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken(clientId);
          if (refreshStatus) {
            return await _get(
              url: url,
              requiresToken: requiresToken,
              count: count + 1,
              clientId: clientId,
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

  Future<ApiResult<Map<String, dynamic>>> get({
    required String url,
    required String clientId,
    bool requiresToken = true,

    Map<String, String>? queryParameters,
  }) =>
      _get(
        url: url,
        clientId: clientId,
        queryParameters: queryParameters,
        requiresToken: requiresToken,
      );

  Future<ApiResult<Map<String, dynamic>>> post({
    required String url,
    required String clientId,
    bool requiresToken = true,
    Map<String, dynamic>? body,
    Map<String, String>? header,
    Options? options,
  }) =>
      _post(
        url: url,
        clientId: clientId,
        body: body,
        header: header,
        requiresToken: requiresToken,
      );

  Future<bool> _refreshToken(String clientId) async {
    final refreshToken = await _storageService.getRefreshToken();

    final data = {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
      'client_id': clientId,
    };

    try {
      final response = await _dio.post(
        Routes.autGetTokenUrl,
        data: data,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );
      final accessToken = response.data[_storageService.kAccessToken];
      final refreshToken = response.data[_storageService.kRefreshToken];

      if (accessToken != null && refreshToken != null) {
        _storageService.saveToken(
          accessToken: accessToken,
          refreshToken: refreshToken,
        );
        return true;
      } else {
        return false;
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<ApiResult<Map<String, dynamic>>> _post({
    required String url,
    required String clientId,
    Map<String, dynamic>? body,
    required bool requiresToken,
    Map<String,String>? header,
    int count = 0,
  }) async {
    if (count < 2) {
      try {
        final response = await _dio.post(
          url,
          data: body,
          options: Options(
            headers: header
          )
        );
        return ApiResult.success(data: response.data);
      } on DioError catch (e) {
        final response = e.response;
        if (response?.statusCode == 401) {
          final refreshStatus = await _refreshToken(clientId);
          if (refreshStatus) {
            return await _post(
              url: url,
              requiresToken: requiresToken,
              clientId: clientId,
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
