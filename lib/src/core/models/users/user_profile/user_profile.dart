import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/models.dart';


part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    String? country,
    @JsonKey(name: 'display_name') String? displayName,
    String? email,
    @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
    @JsonKey(name: 'external_urls')  ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? uri,
    String? product,
    String? type,
    List<Image>? images,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, Object?> json) =>
      _$UserProfileFromJson(json);
}
