// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cursors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cursors _$CursorsFromJson(Map<String, dynamic> json) {
  return _Cursors.fromJson(json);
}

/// @nodoc
mixin _$Cursors {
  String? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CursorsCopyWith<Cursors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursorsCopyWith<$Res> {
  factory $CursorsCopyWith(Cursors value, $Res Function(Cursors) then) =
      _$CursorsCopyWithImpl<$Res>;
  $Res call({String? after});
}

/// @nodoc
class _$CursorsCopyWithImpl<$Res> implements $CursorsCopyWith<$Res> {
  _$CursorsCopyWithImpl(this._value, this._then);

  final Cursors _value;
  // ignore: unused_field
  final $Res Function(Cursors) _then;

  @override
  $Res call({
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CursorsCopyWith<$Res> implements $CursorsCopyWith<$Res> {
  factory _$$_CursorsCopyWith(
          _$_Cursors value, $Res Function(_$_Cursors) then) =
      __$$_CursorsCopyWithImpl<$Res>;
  @override
  $Res call({String? after});
}

/// @nodoc
class __$$_CursorsCopyWithImpl<$Res> extends _$CursorsCopyWithImpl<$Res>
    implements _$$_CursorsCopyWith<$Res> {
  __$$_CursorsCopyWithImpl(_$_Cursors _value, $Res Function(_$_Cursors) _then)
      : super(_value, (v) => _then(v as _$_Cursors));

  @override
  _$_Cursors get _value => super._value as _$_Cursors;

  @override
  $Res call({
    Object? after = freezed,
  }) {
    return _then(_$_Cursors(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cursors implements _Cursors {
  const _$_Cursors({this.after});

  factory _$_Cursors.fromJson(Map<String, dynamic> json) =>
      _$$_CursorsFromJson(json);

  @override
  final String? after;

  @override
  String toString() {
    return 'Cursors(after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cursors &&
            const DeepCollectionEquality().equals(other.after, after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(after));

  @JsonKey(ignore: true)
  @override
  _$$_CursorsCopyWith<_$_Cursors> get copyWith =>
      __$$_CursorsCopyWithImpl<_$_Cursors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CursorsToJson(
      this,
    );
  }
}

abstract class _Cursors implements Cursors {
  const factory _Cursors({final String? after}) = _$_Cursors;

  factory _Cursors.fromJson(Map<String, dynamic> json) = _$_Cursors.fromJson;

  @override
  String? get after;
  @override
  @JsonKey(ignore: true)
  _$$_CursorsCopyWith<_$_Cursors> get copyWith =>
      throw _privateConstructorUsedError;
}
