import 'package:dio/dio.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import '../../constants/constants.dart';

class ArtistService {
  final Dio _dio;

  ArtistService(this._dio);

  Future<Artist> getArtist({
    required String id,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final response = await _dio.get(
      Routes.getArtist(id),
      queryParameters: queryParameters,
      options: options,
    );

    try {
      final artist = Artist.fromJson(response.data);
      return artist;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<List<Artist>> getSeveralArtists({
    required String ids,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final Map<String, dynamic> idsMap = {'ids': ids};
    if (queryParameters != null) {
      idsMap.addAll(queryParameters);
    }

    final response = await _dio.get(
      Routes.getSeveralArtists,
      queryParameters: idsMap,
      options: options,
    );

    try {
      final artists = (response.data['artists'] as List<dynamic>)
          .map((json) => Artist.fromJson(json))
          .toList();

      return artists;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<PaginatedResponseAlbums> getArtistAlbums({
    required String id,
    String? includeGroups,
    int? limits,
    String? market,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      if(includeGroups != null) 'include_groups': includeGroups,
      if (market != null) 'market': market,
      if (limits != null) 'limit': limits,
      if (offset != null) 'offset': offset,
    };

    final response = await _dio.get(
      Routes.getArtistsAlbums(id),
      queryParameters: queryParameters,
    );

    try {
      return PaginatedResponseAlbums.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<List<Track>> getArtistTopTracks({
    required String id,
    required String market,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
    };
    final response = await _dio.get(
      Routes.getArtistTopTracks(id),
      queryParameters: queryParameters,
    );

    try {
      final tracks = (response.data['tracks'] as List<dynamic>)
          .map((json) => Track.fromJson(json))
          .toList();
      return tracks;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<List<Artist>> getArtistsRelatedArtists(
    String id,
  ) async {
    final response = await _dio.get(
      Routes.getArtistRelatedArtists(id),
    );

    try {
      final artists = (response.data['artists'] as List<dynamic>)
          .map((json) => Artist.fromJson(json))
          .toList();
      return artists;
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
