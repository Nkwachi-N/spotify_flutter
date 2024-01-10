import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../constants/constants.dart';

class UserService {
  final Dio _dio;

  UserService(this._dio);

  Future<UserProfile> getCurrentUsersProfile() async {
    final response = await _dio.get(Routes.getUserInfo);

    try {
      return UserProfile.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<PaginatedResponseArtist> getUserTopArtists({
    int limit = 20,
    int offset = 0,
    String timeRange = 'medium_term',
  }) async {
    final response = await _dio.get(Routes.getUserTopArtists, queryParameters: {
      'limit': limit,
      'offset': offset,
      'time_range': timeRange,
    });

    try {
      return PaginatedResponseArtist.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<PaginatedResponseTracks> getUserTopTracks({
    int limit = 20,
    int offset = 0,
    String timeRange = 'medium_term',
  }) async {
    final response = await _dio.get(Routes.getUserTopTracks, queryParameters: {
      'limit': limit,
      'offset': offset,
      'time_range': timeRange
    });

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

  Future<UserProfile> getUserProfile(String userId) async {
    final response = await _dio.get(
      Routes.getUserProfile(userId),
    );

    try {
      return UserProfile.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<bool> followPlaylist({
    required String id,
    bool public = true,
  }) async {
    final response = await _dio.put(
      Routes.userFollowedPlaylist(id),
      data: {'public': public},
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

  Future<bool> unFollowPlaylist(String id) async {
    final response = await _dio.delete(
      Routes.userFollowedPlaylist(id),
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

  Future<PaginatedResponseArtist> getFollowedArtists(
      {String? after, int limit = 20}) async {
    final response = await _dio.get(
      Routes.followUrl,
      queryParameters: {
        'type': 'artist',
        if (after != null) 'after': after,
        'limit': limit,
      },
    );

    try {
      return PaginatedResponseArtist.fromJson(response.data['artists']);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<bool> unfollowArtists({required String ids}) =>
      unfollow(ids: ids, type: 'artist');

  Future<bool> unfollowUsers({required String ids}) =>
      unfollow(ids: ids, type: 'user');

  Future<bool> followUsers({required String ids}) =>
      follow(ids: ids, type: 'user');

  Future<bool> followArtists({required String ids}) =>
      follow(ids: ids, type: 'artist');

  Future<List<bool>> checkIfUserFollowsArtists({required String ids}) =>
      checkIfUserFollows(ids: ids, type: 'artist');

  Future<List<bool>> checkIfUserFollowsUsers({required String ids}) =>
      checkIfUserFollows(ids: ids, type: 'user');

  Future<bool> unfollow({required String ids, required String type}) async {
    final response = await _dio.delete(Routes.followUrl, queryParameters: {
      'type': type,
      'ids': ids,
    });

    try {
      return response.statusCode == 204;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<bool> follow({required String ids, required String type}) async {
    final response = await _dio.put(Routes.followUrl, queryParameters: {
      'type': type,
      'ids': ids,
    });

    try {
      return response.statusCode == 204;
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }

  Future<List<bool>> checkIfUserFollows(
      {required String ids, required String type}) async {
    final response = await _dio.get(Routes.checkFollowUrl, queryParameters: {
      'type': type,
      'ids': ids,
    });

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

  Future<List<bool>> checkIfUserFollowsPlaylist(
      {required String playlistId, required String userIds}) async {
    final response = await _dio.get(
        Routes.checkIfUserFollowsPlaylistUrl(playlistId),
        queryParameters: {
          'ids': userIds,
        });

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
}
