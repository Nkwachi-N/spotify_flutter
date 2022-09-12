import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_flutter/src/core/services/storage/storage_service.dart';
import '../constants/constants.dart';

class ApiClient {
  final _dio = Dio();
  final _storageService = StorageService();

  Future<Map<String, dynamic>?> _get(
      {required String url,
      required String clientId,
      bool requiresToken = true,
      Map<String, String>? queryParameters,
      int count = 0}) async {
    final Map<String, String> header = {};

      if(count < 2) {
        if (requiresToken) {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString(_storageService.kAccessToken);

          header['Authorization'] = 'Bearer $token';
        }

        try {
          final response = await _dio.get(
            url,
            options: Options(
              headers: header,
            ),
          );

          return response.data;
        } on DioError catch (e) {
          final response = e.response;
          if (response?.statusCode == 401) {
            try {
              final refreshStatus = await _refreshToken(clientId);
              if (refreshStatus) {
                return await _get(
                  url: url,
                  requiresToken: requiresToken,
                  count: count + 1,
                  clientId: clientId,
                );
              }
            } catch (_) {
              rethrow;
            }
          } else if (response?.statusCode == 403) {
            throw Exception('Rate exceeded');
          } else {
            throw Exception('Unknown error');
          }
        } catch (e) {
          rethrow;
        }
        return null;
      } else {
        return null;
      }
  }

  Future<Map<String, dynamic>?> get({
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

  Future<bool> _refreshToken(String clientId) async {
    final refreshToken = await _storageService.getRefreshToken();

    final data = {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
      'client_id': clientId,
    };

    final header = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    try {
      final response = await _dio.post(
        Routes.autGetTokenUrl,
        data: data,
        options: Options(headers: header),
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
}
