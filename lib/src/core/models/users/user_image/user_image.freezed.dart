// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserImage _$UserImageFromJson(Map<String, dynamic> json) {
  return _UserImage.fromJson(json);
}

/// @nodoc
mixin _$UserImage {
  String? get url => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserImageCopyWith<UserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageCopyWith<$Res> {
  factory $UserImageCopyWith(UserImage value, $Res Function(UserImage) then) =
      _$UserImageCopyWithImpl<$Res>;
  $Res call({String? url, String? width, String? height});
}

/// @nodoc
class _$UserImageCopyWithImpl<$Res> implements $UserImageCopyWith<$Res> {
  _$UserImageCopyWithImpl(this._value, this._then);

  final UserImage _value;
  // ignore: unused_field
  final $Res Function(UserImage) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserImageCopyWith<$Res> implements $UserImageCopyWith<$Res> {
  factory _$$_UserImageCopyWith(
          _$_UserImage value, $Res Function(_$_UserImage) then) =
      __$$_UserImageCopyWithImpl<$Res>;
  @override
  $Res call({String? url, String? width, String? height});
}

/// @nodoc
class __$$_UserImageCopyWithImpl<$Res> extends _$UserImageCopyWithImpl<$Res>
    implements _$$_UserImageCopyWith<$Res> {
  __$$_UserImageCopyWithImpl(
      _$_UserImage _value, $Res Function(_$_UserImage) _then)
      : super(_value, (v) => _then(v as _$_UserImage));

  @override
  _$_UserImage get _value => super._value as _$_UserImage;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_UserImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserImage implements _UserImage {
  const _$_UserImage({this.url, this.width, this.height});

  factory _$_UserImage.fromJson(Map<String, dynamic> json) =>
      _$$_UserImageFromJson(json);

  @override
  final String? url;
  @override
  final String? width;
  @override
  final String? height;

  @override
  String toString() {
    return 'UserImage(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserImage &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$$_UserImageCopyWith<_$_UserImage> get copyWith =>
      __$$_UserImageCopyWithImpl<_$_UserImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserImageToJson(
      this,
    );
  }
}

abstract class _UserImage implements UserImage {
  const factory _UserImage(
      {final String? url,
      final String? width,
      final String? height}) = _$_UserImage;

  factory _UserImage.fromJson(Map<String, dynamic> json) =
      _$_UserImage.fromJson;

  @override
  String? get url;
  @override
  String? get width;
  @override
  String? get height;
  @override
  @JsonKey(ignore: true)
  _$$_UserImageCopyWith<_$_UserImage> get copyWith =>
      throw _privateConstructorUsedError;
}
