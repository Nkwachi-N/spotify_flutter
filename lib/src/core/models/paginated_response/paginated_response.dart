
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@freezed
class PaginatedResponse with _$PaginatedResponse{


  const factory PaginatedResponse.artists({
    String? hRef,
    required int limit,
    required int offset,
    String? next,
    String? previous,
    int? total,
    required List<Artist> items,
  }) =
  PaginatedResponseArtist;

  const factory PaginatedResponse.albums({
    String? hRef,
    required int limit,
    required int offset,
    String? next,
    String? previous,
    int? total,
    required List<Artist> items,
  }) =
  PaginatedResponseAlbums;

  const factory PaginatedResponse.tracks({
    String? hRef,
    required int limit,
    required int offset,
    String? next,
    String? previous,
    int? total,
    required List<Artist> items,
  }) =
  PaginatedResponseTracks;

  factory PaginatedResponse.fromJson(Map<String, dynamic> json) => _$PaginatedResponseFromJson(json);
}