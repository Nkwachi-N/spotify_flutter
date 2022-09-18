import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/models/models.dart';

import '../../constants/constants.dart';

class UserService {
  final apiClient = ApiClient.instance;

  Future<ApiResult<GetCurrentUserProfileResponse>> getCurrentUsersProfile(
      {required String clientId}) async {
    final response = await apiClient.get(
        clientId: clientId, requiresToken: true, url: Routes.getUserInfo);

    late ApiResult<GetCurrentUserProfileResponse> result;

    response.when(
      success: (success) {
        result = ApiResult.success(
          data: GetCurrentUserProfileResponse.fromJson(success),
        );
      },
      failure: (failure) {
        result =  ApiResult.failure(error: failure);
      },
    );

    return result;
  }
}
