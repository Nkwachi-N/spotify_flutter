// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableGenre _$AvailableGenreFromJson(Map<String, dynamic> json) {
  return _AvailableGenre.fromJson(json);
}

/// @nodoc
mixin _$AvailableGenre {
  List<String> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableGenreCopyWith<AvailableGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableGenreCopyWith<$Res> {
  factory $AvailableGenreCopyWith(
          AvailableGenre value, $Res Function(AvailableGenre) then) =
      _$AvailableGenreCopyWithImpl<$Res>;
  $Res call({List<String> genres});
}

/// @nodoc
class _$AvailableGenreCopyWithImpl<$Res>
    implements $AvailableGenreCopyWith<$Res> {
  _$AvailableGenreCopyWithImpl(this._value, this._then);

  final AvailableGenre _value;
  // ignore: unused_field
  final $Res Function(AvailableGenre) _then;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailableGenreCopyWith<$Res>
    implements $AvailableGenreCopyWith<$Res> {
  factory _$$_AvailableGenreCopyWith(
          _$_AvailableGenre value, $Res Function(_$_AvailableGenre) then) =
      __$$_AvailableGenreCopyWithImpl<$Res>;
  @override
  $Res call({List<String> genres});
}

/// @nodoc
class __$$_AvailableGenreCopyWithImpl<$Res>
    extends _$AvailableGenreCopyWithImpl<$Res>
    implements _$$_AvailableGenreCopyWith<$Res> {
  __$$_AvailableGenreCopyWithImpl(
      _$_AvailableGenre _value, $Res Function(_$_AvailableGenre) _then)
      : super(_value, (v) => _then(v as _$_AvailableGenre));

  @override
  _$_AvailableGenre get _value => super._value as _$_AvailableGenre;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_$_AvailableGenre(
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableGenre implements _AvailableGenre {
  const _$_AvailableGenre({required final List<String> genres})
      : _genres = genres;

  factory _$_AvailableGenre.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableGenreFromJson(json);

  final List<String> _genres;
  @override
  List<String> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'AvailableGenre(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableGenre &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableGenreCopyWith<_$_AvailableGenre> get copyWith =>
      __$$_AvailableGenreCopyWithImpl<_$_AvailableGenre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableGenreToJson(
      this,
    );
  }
}

abstract class _AvailableGenre implements AvailableGenre {
  const factory _AvailableGenre({required final List<String> genres}) =
      _$_AvailableGenre;

  factory _AvailableGenre.fromJson(Map<String, dynamic> json) =
      _$_AvailableGenre.fromJson;

  @override
  List<String> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableGenreCopyWith<_$_AvailableGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
