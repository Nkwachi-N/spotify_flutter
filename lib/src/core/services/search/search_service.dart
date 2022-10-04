import 'package:spotify_flutter/src/core/models/search_response/search_response.dart';

import '../../api/api_client.dart';
import '../../api/api_result.dart';
import '../../constants/constants.dart';

class SearchService {
  final apiClient = ApiClient.instance;

  Future<ApiResult<SearchResponse>> getTracksByGenre(
      {required String genre,
      int? limit,
      int? offset,
      String? market,
      String? includeExternal}) => genericSearch(query: 'genre: $genre', type: 'track');

  Future<ApiResult<SearchResponse>> getTracksByArtist(
      {required String artist,
      int? limit,
      int? offset,
      String? market,
      String? includeExternal}) => genericSearch(query: 'artist: $artist', type: 'track');

  Future<ApiResult<SearchResponse>> genericSearch(
      {required String query,
      required String type,
      int? limit,
      int? offset,
      String? market,
      String? includeExternal}) async {
    final response = await apiClient
        .get(requiresToken: true, url: Routes.search, queryParameters: {
      'q': query,
      'type': type,
      'offset': offset,
      'limit': limit,
      'market': market,
      'include_external': includeExternal
    });

    late ApiResult<SearchResponse> result;

    response.when(
      success: (success) {
        result = ApiResult.success(data: SearchResponse.fromJson(success.data));
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }
}
