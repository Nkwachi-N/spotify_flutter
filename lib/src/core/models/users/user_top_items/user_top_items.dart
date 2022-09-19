import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_flutter/src/core/models/artist/artist.dart';

part 'user_top_items.freezed.dart';

part 'user_top_items.g.dart';

@freezed
class UserTopItems with _$UserTopItems {


  const factory UserTopItems.artists({
    String? hRef,
    required int limit,
    required int offset,
    String? previous,
    int? total,
    required List<Artist> items,
  }) =
  UserTopItemsArtist;

  factory UserTopItems.fromJson(Map<String, dynamic> json) => _$UserTopItemsFromJson(json);
}
