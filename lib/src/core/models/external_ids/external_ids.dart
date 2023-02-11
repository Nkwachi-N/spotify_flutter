import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_ids.g.dart';
part 'external_ids.freezed.dart';

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    String? isrc,
    String? ean,
    String? upc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, Object?> json) =>
      _$ExternalIdsFromJson(json);
}
