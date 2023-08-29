import 'package:dio/dio.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../constants/constants.dart';

abstract class AlbumService {
  Future<bool> saveAlbum(String ids);

  Future<bool> removeAlbums(String ids);

  Future<List<bool>> checkSavedAlbums(String ids);

  Future<PaginatedResponseAlbums> getNewReleases(
      {String? country, int? limit, int? offset});

  Future<PaginatedResponseAlbums> getSavedAlbums(
      {String? market, int? limit, int? offset});

  Future<Album> getAlbum({required String id, String? market});

  Future<List<Album>> getSeveralAlbums({required String ids, String? market});

  Future<PaginatedResponseTracks> getAlbumTracks(
      {required String id, String? market, int? limit, int? offset});
}

class AlbumServiceImpl extends AlbumService {
  final Dio _dio;

  AlbumServiceImpl(this._dio);

  @override
  Future<List<bool>> checkSavedAlbums(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _dio.get(
      Routes.checkSavedAlbums,
      queryParameters: queryParameters,
    );
    try {
      return List<bool>.from(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<Album> getAlbum({
    required String id,
    String? market,
  }) async {
    Map<String, dynamic> queryParameters = {
      if (market != null) 'market': market,
    };

    final response = await _dio.get(
      Routes.getAlbum(id),
      queryParameters: queryParameters,
    );

    try {
      return Album.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<PaginatedResponseTracks> getAlbumTracks({
    required String id,
    String? market,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      if (market != null) 'market': market,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final response = await _dio.get(
      Routes.getAlbumTracks(id),
      queryParameters: queryParameters,
    );

    try {
      return PaginatedResponseTracks.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<PaginatedResponseAlbums> getNewReleases({
    String? country,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      if (country != null) 'country': country,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final response = await _dio.get(
      Routes.getNewReleases,
      queryParameters: queryParameters,
    );

    try {
      return PaginatedResponseAlbums.fromJson(response.data['albums']);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<PaginatedResponseAlbums> getSavedAlbums({
    String? market,
    int? limit,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      if (market != null) 'market': market,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final response = await _dio.get(
      Routes.userAlbums,
      queryParameters: queryParameters,
    );

    try {
      return PaginatedResponseAlbums(
        hRef: response.data['href'],
        limit: response.data['limit'],
        next: response.data['next'],
        offset: response.data['offset'],
        previous: response.data['previous'],
        total: response.data['total'],
        items: response.data['items']
            .map<Album>((json) => Album.fromJson(json['album']))
            .toList(),
      );
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<List<Album>> getSeveralAlbums({
    required String ids,
    String? market,
  }) async {
    Map<String, dynamic> queryParameters = {
      if(market != null)'market': market,
      'ids': ids,
    };

    final response = await _dio.get(
      Routes.getSeveralAlbums,
      queryParameters: queryParameters,
    );

    try {
      return (response.data['albums'] as List<dynamic>)
          .map((json) => Album.fromJson(json))
          .toList();
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<bool> removeAlbums(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _dio.delete(
      Routes.userAlbums,
      queryParameters: queryParameters,
    );

    try {
      return response.statusCode == 200;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  @override
  Future<bool> saveAlbum(String ids) async {
    Map<String, dynamic> queryParameters = {
      'ids': ids,
    };

    final response = await _dio.put(
      Routes.userAlbums,
      queryParameters: queryParameters,
    );

    try {
      return response.statusCode == 200;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }
}
