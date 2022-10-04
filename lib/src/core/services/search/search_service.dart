import 'package:spotify_flutter/src/core/models/search_response/search_response.dart';

import '../../api/api_client.dart';
import '../../api/api_result.dart';
import '../../constants/constants.dart';

class SearchService {

  final apiClient = ApiClient.instance;


  Future<ApiResult<SearchResponse>> getTracksByGenre(String genre) async {

    final response = await apiClient.get(requiresToken: true, url: Routes.getGenre);

    late ApiResult<SearchResponse> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
            data: SearchResponse.fromJson(success.data)
        );
      },
      failure: (failure) {
        result =  ApiResult.failure(error: failure);
      },
    );

    return result;
  }



}