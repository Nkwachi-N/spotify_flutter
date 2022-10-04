import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/external_ids/external_ids.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/restrictions/restrictions.dart';

part 'track.g.dart';

part 'track.freezed.dart';

@freezed
class Track with _$Track {
  const factory Track({
    required String uri,
    required String type,
    @JsonKey(name: 'is_local') required bool isLocal,
    @JsonKey(name: 'track_number') required int trackNumber,
    @JsonKey(name: 'preview_url') String? previewUrl,
    int? popularity,
    required String name,
    Restrictions? restrictions,
    @JsonKey(name: 'linked_from') Track? linkedFrom,
    @JsonKey(name: 'is_playable') bool? isPlayable,
    required String id,
    String? hRef,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    @JsonKey(name: 'external_ids') ExternalIds? externalIds,
    required bool explicit,
  @JsonKey(name: 'duration_ms') required int durationMs,
  @JsonKey(name: 'disc_number') required int discNumber,
  @JsonKey(name: 'available_markets') List<String>? availableMarkets,
    List<Artist>? artists,
    Album? album,
  }) = _Track;

  factory Track.fromJson(Map<String, Object?> json) => _$TrackFromJson(json);
}
