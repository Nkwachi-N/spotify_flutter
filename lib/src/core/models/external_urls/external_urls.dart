import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_urls.freezed.dart';

part 'external_urls.g.dart';

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({required String spotify}) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, Object?> json) =>
      _$ExternalUrlsFromJson(json);
}
