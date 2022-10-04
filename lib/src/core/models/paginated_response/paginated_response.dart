
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
class PaginatedResponse with _$PaginatedResponse{


  const factory PaginatedResponse.artists({
    String? hRef,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    int? total,
    List<Artist>? items,
  }) =
  PaginatedResponseArtist;

  const factory PaginatedResponse.albums({
    String? hRef,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    int? total,
    List<Album>? items,
  }) =
  PaginatedResponseAlbums;

  const factory PaginatedResponse.tracks({
    String? hRef,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    int? total,
    required List<Track> items,
  }) =
  PaginatedResponseTracks;

  factory PaginatedResponse.fromJson(Map<String, dynamic> json) => _$PaginatedResponseFromJson(json);
}