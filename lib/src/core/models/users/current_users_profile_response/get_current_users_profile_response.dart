import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/users/followers/followers.dart';

import '../explicit_content/explicit_content.dart';
import '../user_image/user_image.dart';

part 'get_current_users_profile_response.freezed.dart';

part 'get_current_users_profile_response.g.dart';

@freezed
class GetCurrentUserProfileResponse with _$GetCurrentUserProfileResponse {
  const factory GetCurrentUserProfileResponse({
    String? country,
    @JsonKey(name: 'display_name') String? displayName,
    String? email,
    @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
    @JsonKey(name: 'external_urls') required String externalUrls,
    required Followers followers,
    required String href,
    required String id,
    required String uri,
    required String product,
    required String type,
    required List<UserImage> images,
  }) = _GetCurrentUserProfileResponse;

  factory GetCurrentUserProfileResponse.fromJson(Map<String, Object?> json) =>
      _$GetCurrentUserProfileResponseFromJson(json);
}
