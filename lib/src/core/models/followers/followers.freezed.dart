// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'followers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return _Followers.fromJson(json);
}

/// @nodoc
mixin _$Followers {
  int get total => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersCopyWith<Followers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersCopyWith<$Res> {
  factory $FollowersCopyWith(Followers value, $Res Function(Followers) then) =
      _$FollowersCopyWithImpl<$Res>;
  $Res call({int total, String? href});
}

/// @nodoc
class _$FollowersCopyWithImpl<$Res> implements $FollowersCopyWith<$Res> {
  _$FollowersCopyWithImpl(this._value, this._then);

  final Followers _value;
  // ignore: unused_field
  final $Res Function(Followers) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FollowersCopyWith<$Res> implements $FollowersCopyWith<$Res> {
  factory _$$_FollowersCopyWith(
          _$_Followers value, $Res Function(_$_Followers) then) =
      __$$_FollowersCopyWithImpl<$Res>;
  @override
  $Res call({int total, String? href});
}

/// @nodoc
class __$$_FollowersCopyWithImpl<$Res> extends _$FollowersCopyWithImpl<$Res>
    implements _$$_FollowersCopyWith<$Res> {
  __$$_FollowersCopyWithImpl(
      _$_Followers _value, $Res Function(_$_Followers) _then)
      : super(_value, (v) => _then(v as _$_Followers));

  @override
  _$_Followers get _value => super._value as _$_Followers;

  @override
  $Res call({
    Object? total = freezed,
    Object? href = freezed,
  }) {
    return _then(_$_Followers(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Followers implements _Followers {
  const _$_Followers({required this.total, this.href});

  factory _$_Followers.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersFromJson(json);

  @override
  final int total;
  @override
  final String? href;

  @override
  String toString() {
    return 'Followers(total: $total, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Followers &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.href, href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(href));

  @JsonKey(ignore: true)
  @override
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      __$$_FollowersCopyWithImpl<_$_Followers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersToJson(
      this,
    );
  }
}

abstract class _Followers implements Followers {
  const factory _Followers({required final int total, final String? href}) =
      _$_Followers;

  factory _Followers.fromJson(Map<String, dynamic> json) =
      _$_Followers.fromJson;

  @override
  int get total;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      throw _privateConstructorUsedError;
}
