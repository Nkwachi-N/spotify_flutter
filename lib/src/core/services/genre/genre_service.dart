import 'package:spotify_flutter/src/core/models/available_genre/available_genre.dart';

import '../../api/api_client.dart';
import '../../api/api_result.dart';
import '../../constants/constants.dart';

class GenreService{

  final apiClient = ApiClient.instance;

  Future<ApiResult<AvailableGenre>> getAvailableGenreSeeds() async {

    final response = await apiClient.get(requiresToken: true, url: Routes.getGenre);

    late ApiResult<AvailableGenre> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: AvailableGenre.fromJson(success.data)
        );
      },
      failure: (failure) {
        result =  ApiResult.failure(error: failure);
      },
    );

    return result;
  }

}