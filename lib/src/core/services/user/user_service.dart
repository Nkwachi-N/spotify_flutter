import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import '../../constants/constants.dart';

class UserService {
  final apiClient = ApiClient.instance;

  Future<ApiResult<GetCurrentUserProfileResponse>>
      getCurrentUsersProfile() async {
    final response =
        await apiClient.get(requiresToken: true, url: Routes.getUserInfo);

    late ApiResult<GetCurrentUserProfileResponse> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: GetCurrentUserProfileResponse.fromJson(success.data),
        );
      },
      failure: (failure) {
        result = ApiResult.failure(error: failure);
      },
    );

    return result;
  }

  Future<ApiResult<PaginatedResponseArtist>> getUserTopArtists() async {
    final response = await apiClient.get(
      requiresToken: true,
      url: Routes.getUserTopArtists,
    );

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
}
