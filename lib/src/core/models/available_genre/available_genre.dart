import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_genre.freezed.dart';
part 'available_genre.g.dart';

@freezed
class AvailableGenre with _$AvailableGenre {
  const factory AvailableGenre(
          {required List<String> genres}) =
      _AvailableGenre;

  factory AvailableGenre.fromJson(Map<String, Object?> json) =>
      _$AvailableGenreFromJson(json);
}
