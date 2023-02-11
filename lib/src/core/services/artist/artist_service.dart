import 'package:spotify_flutter/spotify_flutter.dart';
import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../api/api_result.dart';
import '../../constants/constants.dart';

class ArtistService {
  ApiClient apiClient = ApiClient.instance;

  Future<ApiResult<Artist>> getArtist(String id) async {
    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getArtist(id),
    );

    late ApiResult<Artist> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: Artist.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<List<Artist>>> getSeveralArtists(String ids) async {
    final response = await apiClient.get(
        requiresToken: true,
        url: Routes.getSeveralArtists,
        queryParameters: {'ids': ids});

    late ApiResult<List<Artist>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: (success.data['artists'] as List<dynamic>)
              .map((json) => Artist.fromJson(json))
              .toList(),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<PaginatedResponseAlbums>> getArtistAlbums({
    required String id,
    String? includeGroups,
    int? limits,
    String? market,
    int? offset,
  }) async {
    Map<String, dynamic> queryParameters = {
      'include_groups': includeGroups,
      'limit': limits,
      'market': market,
      'offset': offset
    };

    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getArtistsAlbums(id),
      queryParameters: queryParameters,
    );

    late ApiResult<PaginatedResponseAlbums> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: PaginatedResponseAlbums.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<List<Track>>> getArtistTopTracks({
    required String id,
    required String market,
  }) async {
    Map<String, dynamic> queryParameters = {
      'market': market,
    };
    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getArtistTopTracks(id),
      queryParameters: queryParameters,
    );

    late ApiResult<List<Track>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: (success.data['tracks'] as List<dynamic>)
              .map((json) => Track.fromJson(json))
              .toList(),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<List<Artist>>> getArtistsRelatedArtists(
     String id,
  ) async {

    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getArtistRelatedArtists(id),
    );

    late ApiResult<List<Artist>> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: (success.data['artists'] as List<dynamic>)
              .map((json) => Artist.fromJson(json))
              .toList(),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }
}
