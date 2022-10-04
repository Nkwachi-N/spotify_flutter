
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse{


  const factory SearchResponse({
    String? hRef,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    int? total,
    PaginatedResponseTracks? tracks,
    PaginatedResponseAlbums? albums,
    PaginatedResponseArtist? artist,
  }) =
  _SearchResponse;



  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}