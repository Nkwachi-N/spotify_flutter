import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_image.freezed.dart';
part 'user_image.g.dart';

@freezed
class UserImage with _$UserImage{

  const factory UserImage({required String url, required String width,required String height}) = _UserImage;

  factory UserImage.fromJson(Map<String, Object?> json)
  => _$UserImageFromJson(json);

}
