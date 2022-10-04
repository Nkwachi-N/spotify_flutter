import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../api/api_result.dart';
import '../../constants/constants.dart';

abstract class AlbumService {
  Future<ApiResult<bool>> saveAlbum(String ids);

  Future<ApiResult<bool>> removeAlbums(String ids);

  Future<ApiResult<List<bool>>> checkSavedAlbums(String ids);

  Future<ApiResult<PaginatedResponseAlbums>> getNewReleases(
      {String? country, int? limit, int? offset});

  Future<ApiResult<PaginatedResponseAlbums>> getSavedAlbums(
      {String? market, int? limit, int? offset});

  Future<ApiResult<Album>> getAlbum({required String id, String? market});

  Future<ApiResult<List<Album>>> getSeveralAlbums(
      {required String ids, String? market});

  Future<ApiResult<PaginatedResponseTracks>> getAlbumTracks(
      {required String id, String? market, int? limit, int? offset});
}

class AlbumServiceImpl extends AlbumService {
  final _apiClient = ApiClient.instance;

  @override
  Future<ApiResult<List<bool>>> checkSavedAlbums(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.checkSavedAlbums,
      queryParameters: queryParameters,
    );

    late ApiResult<List<bool>> result;

    response.when(
      success: (success) {
        try {
          final stat = List<bool>.from(success.data);
          result = ApiResult.success(data: stat);
        } catch (e) {
          result = const ApiResult.failure(
              error: NetworkExceptions.unexpectedError());
        }
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<Album>> getAlbum({
    required String id,
    String? market,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.getAlbum(id),
      queryParameters: queryParameters,
    );

    late ApiResult<Album> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: Album.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<PaginatedResponseTracks>> getAlbumTracks({
    required String id,
    String? market,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
      'limit': limit,
      'offset': offset,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.getAlbumTracks(id),
      queryParameters: queryParameters,
    );

    late ApiResult<PaginatedResponseTracks> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: PaginatedResponseTracks.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<PaginatedResponseAlbums>> getNewReleases({
    String? country,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      'country': country,
      'limit': limit,
      'offset': offset,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.getNewReleases,
      queryParameters: queryParameters,
    );

    late ApiResult<PaginatedResponseAlbums> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: PaginatedResponseAlbums.fromJson(success.data['albums']),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<PaginatedResponseAlbums>> getSavedAlbums({
    String? market,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
      'limit': limit,
      'offset': offset,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.userAlbums,
      queryParameters: queryParameters,
    );

    late ApiResult<PaginatedResponseAlbums> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: PaginatedResponseAlbums(
            hRef: success.data['href'],
            limit: success.data['limit'],
            next: success.data['next'],
            offset: success.data['offset'],
            previous: success.data['previous'],
            total: success.data['total'],
            items: success.data['items']
                .map<Album>((json) => Album.fromJson(json['album']))
                .toList(),
          ),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<List<Album>>> getSeveralAlbums({
    required String ids,
    String? market,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
      'ids': ids,
    };

    final response = await _apiClient.get(
      requiresToken: true,
      url: Routes.getSeveralAlbums,
      queryParameters: queryParameters,
    );

    late ApiResult<List<Album>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: (success.data['albums'] as List<dynamic>)
              .map((json) => Album.fromJson(json))
              .toList(),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<bool>> removeAlbums(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _apiClient.delete(
      requiresToken: true,
      url: Routes.userAlbums,
      queryParameters: queryParameters,
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        if (success.statusCode == 200) {
          result = const ApiResult.success(data: true);
        }
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  @override
  Future<ApiResult<bool>> saveAlbum(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _apiClient.put(
      requiresToken: true,
      url: Routes.userAlbums,
      queryParameters: queryParameters,
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        if (success.statusCode == 200) {
          result = const ApiResult.success(data: true);
        }
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }
}
