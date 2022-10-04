import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
import 'package:spotify_flutter/src/core/models/restrictions/restrictions.dart';


part 'album.freezed.dart';

part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    Followers? followers,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    @JsonKey(name: 'album_type') required String albumType,
    @JsonKey(name: 'total_tracks') required int totalTracks,
    @JsonKey(name: 'available_markets')  List<String>? availableMarkets,
    String? hRef,
    required String id,
    required String name,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
    Restrictions? restrictions,
    String? type,
    required String uri,
    required List<Image> images,
    List<Artist>? artists,
    @JsonKey(name: 'album_group') String? albumGroup,
    PaginatedResponseTracks? tracks

  }) = _Album;

  factory Album.fromJson(Map<String, Object?> json) => _$AlbumFromJson(json);
}
