import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursors.freezed.dart';
part 'cursors.g.dart';

@freezed
class Cursors with _$Cursors {
  const factory Cursors(
      {String? after}) =
  _Cursors;

  factory Cursors.fromJson(Map<String, Object?> json) =>
      _$CursorsFromJson(json);
}