import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../constants/constants.dart';

class UserService {
  final apiClient = ApiClient.instance;

  Future<ApiResult<UserProfile>> getCurrentUsersProfile() async {
    final response =
        await apiClient.get(requiresToken: true, url: Routes.getUserInfo);

    late ApiResult<UserProfile> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: UserProfile.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<PaginatedResponseArtist>> getUserTopArtists(
      {int? limit, int? offset, String? timeRange}) async {
    final response = await apiClient.get(
        requiresToken: true,
        url: Routes.getUserTopArtists,
        queryParameters: {
          'limit': limit,
          'offset': offset,
          'time_range': timeRange
        });

    late ApiResult<PaginatedResponseArtist> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: PaginatedResponseArtist.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<PaginatedResponseTracks>> getUserTopTracks(
      {int? limit, int? offset, String? timeRange}) async {
    final response = await apiClient.get(
        requiresToken: true,
        url: Routes.getUserTopTracks,
        queryParameters: {
          'limit': limit,
          'offset': offset,
          'time_range': timeRange
        });

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

  Future<ApiResult<UserProfile>> getUserProfile(String userId) async {
    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getUserProfile(userId),
    );

    late ApiResult<UserProfile> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: UserProfile.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<bool>> followPlaylist({
    required String id,
    bool? public,
  }) async {
    final response = await apiClient.put(
      requiresToken: true,
      url: Routes.userFollowedPlaylist(id),
      body: {'public': public},
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.statusCode == 200);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<bool>> unFollowPlaylist(String id) async {
    final response = await apiClient.delete(
      requiresToken: true,
      url: Routes.userFollowedPlaylist(id),
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.statusCode == 200);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }


  Future<ApiResult<PaginatedResponseArtist>> getFollowedArtists({String? after, int? limit}) async {
    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.followUrl,
      queryParameters: {
        'type': 'artist',
        'after': after,
        'limit': limit
      }
    );

    late ApiResult<PaginatedResponseArtist> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: PaginatedResponseArtist.fromJson(success.data['artists']));
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<bool>> unfollowArtists({required String ids}) => unfollow(ids: ids, type: 'artist');

  Future<ApiResult<bool>> unfollowUsers({required String ids}) => unfollow(ids: ids, type: 'user');

  Future<ApiResult<bool>> followUsers({required String ids}) => follow(ids: ids, type: 'user');

  Future<ApiResult<bool>> followArtists({required String ids}) => follow(ids: ids, type: 'artist');

  Future<ApiResult<List<bool>>> checkIfUserFollowsArtists({required String ids}) => checkIfUserFollows(ids: ids, type: 'artist');

  Future<ApiResult<List<bool>>> checkIfUserFollowsUsers({required String ids}) => checkIfUserFollows(ids: ids, type: 'user');

  Future<ApiResult<bool>> unfollow({required String ids, required String type}) async {
    final response = await apiClient.delete(
      requiresToken: true,
      url: Routes.followUrl,
      queryParameters: {
        'type': type,
        'ids': ids,
      }
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.statusCode == 200);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<bool>> follow({required String ids, required String type}) async {
    final response = await apiClient.put(
      requiresToken: true,
      url: Routes.followUrl,
      queryParameters: {
        'type': type,
        'ids': ids,
      }
    );

    late ApiResult<bool> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.statusCode == 200);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }


  Future<ApiResult<List<bool>>> checkIfUserFollows({required String ids, required String type}) async {
    final response = await apiClient.get(
        requiresToken: true,
        url: Routes.checkFollowUrl,
        queryParameters: {
          'type': type,
          'ids': ids,
        }
    );

    late ApiResult<List<bool>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.data as List<bool>);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<List<bool>>> checkIfUserFollowsPlaylist({required String playlistId, required String userIds}) async {
    final response = await apiClient.get(
        requiresToken: true,
        url: Routes.checkIfUserFollowsPlaylistUrl(playlistId),
        queryParameters: {
          'ids': userIds,
        }
    );

    late ApiResult<List<bool>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: success.data as List<bool>);
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }
}
