import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/models.dart';


part 'artist.freezed.dart';

part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
   Followers? followers,
    @JsonKey(name: 'external_urls') required ExternalUrls externalUrls,
    List<String>? genres,
    List<Image>? images,
    String? href,
    required String id,
    required String name,
    int? popularity,
    required String uri,
    String? type,
  }) = _Artist;

  factory Artist.fromJson(Map<String, Object?> json) => _$ArtistFromJson(json);
}
