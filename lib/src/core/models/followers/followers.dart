
import 'package:freezed_annotation/freezed_annotation.dart';

part 'followers.freezed.dart';
part 'followers.g.dart';


@freezed
class Followers with _$Followers{

  const factory Followers({required int total, String? href}) = _Followers;

  factory Followers.fromJson(Map<String, Object?> json) =>
      _$FollowersFromJson(json);

}