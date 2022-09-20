// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'external_ids.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  String? get isrc => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res>;
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res> implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  final ExternalIds _value;
  // ignore: unused_field
  final $Res Function(ExternalIds) _then;

  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_value.copyWith(
      isrc: isrc == freezed
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExternalIdsCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$_ExternalIdsCopyWith(
          _$_ExternalIds value, $Res Function(_$_ExternalIds) then) =
      __$$_ExternalIdsCopyWithImpl<$Res>;
  @override
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class __$$_ExternalIdsCopyWithImpl<$Res> extends _$ExternalIdsCopyWithImpl<$Res>
    implements _$$_ExternalIdsCopyWith<$Res> {
  __$$_ExternalIdsCopyWithImpl(
      _$_ExternalIds _value, $Res Function(_$_ExternalIds) _then)
      : super(_value, (v) => _then(v as _$_ExternalIds));

  @override
  _$_ExternalIds get _value => super._value as _$_ExternalIds;

  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_$_ExternalIds(
      isrc: isrc == freezed
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: ean == freezed
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: upc == freezed
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExternalIds implements _ExternalIds {
  const _$_ExternalIds({this.isrc, this.ean, this.upc});

  factory _$_ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalIdsFromJson(json);

  @override
  final String? isrc;
  @override
  final String? ean;
  @override
  final String? upc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc, ean: $ean, upc: $upc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalIds &&
            const DeepCollectionEquality().equals(other.isrc, isrc) &&
            const DeepCollectionEquality().equals(other.ean, ean) &&
            const DeepCollectionEquality().equals(other.upc, upc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isrc),
      const DeepCollectionEquality().hash(ean),
      const DeepCollectionEquality().hash(upc));

  @JsonKey(ignore: true)
  @override
  _$$_ExternalIdsCopyWith<_$_ExternalIds> get copyWith =>
      __$$_ExternalIdsCopyWithImpl<_$_ExternalIds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalIdsToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds(
      {final String? isrc,
      final String? ean,
      final String? upc}) = _$_ExternalIds;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$_ExternalIds.fromJson;

  @override
  String? get isrc;
  @override
  String? get ean;
  @override
  String? get upc;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalIdsCopyWith<_$_ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}
