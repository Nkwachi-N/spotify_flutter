// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restrictions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restrictions _$RestrictionsFromJson(Map<String, dynamic> json) {
  return _Restrictions.fromJson(json);
}

/// @nodoc
mixin _$Restrictions {
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestrictionsCopyWith<Restrictions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionsCopyWith<$Res> {
  factory $RestrictionsCopyWith(
          Restrictions value, $Res Function(Restrictions) then) =
      _$RestrictionsCopyWithImpl<$Res>;
  $Res call({String? reason});
}

/// @nodoc
class _$RestrictionsCopyWithImpl<$Res> implements $RestrictionsCopyWith<$Res> {
  _$RestrictionsCopyWithImpl(this._value, this._then);

  final Restrictions _value;
  // ignore: unused_field
  final $Res Function(Restrictions) _then;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RestrictionsCopyWith<$Res>
    implements $RestrictionsCopyWith<$Res> {
  factory _$$_RestrictionsCopyWith(
          _$_Restrictions value, $Res Function(_$_Restrictions) then) =
      __$$_RestrictionsCopyWithImpl<$Res>;
  @override
  $Res call({String? reason});
}

/// @nodoc
class __$$_RestrictionsCopyWithImpl<$Res>
    extends _$RestrictionsCopyWithImpl<$Res>
    implements _$$_RestrictionsCopyWith<$Res> {
  __$$_RestrictionsCopyWithImpl(
      _$_Restrictions _value, $Res Function(_$_Restrictions) _then)
      : super(_value, (v) => _then(v as _$_Restrictions));

  @override
  _$_Restrictions get _value => super._value as _$_Restrictions;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$_Restrictions(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restrictions implements _Restrictions {
  const _$_Restrictions({this.reason});

  factory _$_Restrictions.fromJson(Map<String, dynamic> json) =>
      _$$_RestrictionsFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'Restrictions(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restrictions &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$_RestrictionsCopyWith<_$_Restrictions> get copyWith =>
      __$$_RestrictionsCopyWithImpl<_$_Restrictions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestrictionsToJson(
      this,
    );
  }
}

abstract class _Restrictions implements Restrictions {
  const factory _Restrictions({final String? reason}) = _$_Restrictions;

  factory _Restrictions.fromJson(Map<String, dynamic> json) =
      _$_Restrictions.fromJson;

  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_RestrictionsCopyWith<_$_Restrictions> get copyWith =>
      throw _privateConstructorUsedError;
}
