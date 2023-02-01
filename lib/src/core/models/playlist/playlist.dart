import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';

part 'playlist.freezed.dart';

part 'playlist.g.dart';


@freezed
class Playlist with _$Playlist {

  const factory Playlist({bool? collaborative,
    String? description, @JsonKey(
      name: 'external_urls') ExternalUrls? externalUrls,
    Followers? followers,
    String? hRef,
    String? id,
    List<Image>? images,
    String? name,
    UserProfile? owner,
    bool? public,
    @JsonKey(name: 'snapshot_id') String? snapshotId,
    PaginatedResponseTracks? tracks,
    String? type,
    String? uri,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, Object?> json)
  => _$PlaylistFromJson(json);

}