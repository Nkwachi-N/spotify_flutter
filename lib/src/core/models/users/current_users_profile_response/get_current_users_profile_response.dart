import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/models.dart';


part 'get_current_users_profile_response.freezed.dart';
part 'get_current_users_profile_response.g.dart';

@freezed
class GetCurrentUserProfileResponse with _$GetCurrentUserProfileResponse {
  const factory GetCurrentUserProfileResponse({
    String? country,
    @JsonKey(name: 'display_name') String? displayName,
    String? email,
    @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? uri,
    String? product,
    String? type,
    List<Image>? images,
  }) = _GetCurrentUserProfileResponse;

  factory GetCurrentUserProfileResponse.fromJson(Map<String, Object?> json) =>
      _$GetCurrentUserProfileResponseFromJson(json);
}
