// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'explicit_content.freezed.dart';
part 'explicit_content.g.dart';

@freezed
class ExplicitContent with  _$ExplicitContent{


  const factory ExplicitContent({@JsonKey(name: 'filter_enabled') required bool filterEnabled, @JsonKey(name: 'filter_locked') required bool filterLocked}) = _ExplicitContent;


  factory ExplicitContent.fromJson(Map<String, Object?> json)
  => _$ExplicitContentFromJson(json);
}
