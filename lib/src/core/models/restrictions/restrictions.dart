import 'package:freezed_annotation/freezed_annotation.dart';

part 'restrictions.g.dart';
part 'restrictions.freezed.dart';
@freezed
class Restrictions with  _$Restrictions{

  const factory Restrictions(
      {String? reason}) =
  _Restrictions;

  factory Restrictions.fromJson(Map<String, Object?> json) =>
      _$RestrictionsFromJson(json);

}