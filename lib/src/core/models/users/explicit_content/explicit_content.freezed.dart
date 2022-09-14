// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'explicit_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExplicitContent _$ExplicitContentFromJson(Map<String, dynamic> json) {
  return _ExplicitContent.fromJson(json);
}

/// @nodoc
mixin _$ExplicitContent {
  @JsonKey(name: 'filter_enabled')
  bool get filterEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter_locked')
  bool get filterLocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplicitContentCopyWith<ExplicitContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplicitContentCopyWith<$Res> {
  factory $ExplicitContentCopyWith(
          ExplicitContent value, $Res Function(ExplicitContent) then) =
      _$ExplicitContentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'filter_enabled') bool filterEnabled,
      @JsonKey(name: 'filter_locked') bool filterLocked});
}

/// @nodoc
class _$ExplicitContentCopyWithImpl<$Res>
    implements $ExplicitContentCopyWith<$Res> {
  _$ExplicitContentCopyWithImpl(this._value, this._then);

  final ExplicitContent _value;
  // ignore: unused_field
  final $Res Function(ExplicitContent) _then;

  @override
  $Res call({
    Object? filterEnabled = freezed,
    Object? filterLocked = freezed,
  }) {
    return _then(_value.copyWith(
      filterEnabled: filterEnabled == freezed
          ? _value.filterEnabled
          : filterEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      filterLocked: filterLocked == freezed
          ? _value.filterLocked
          : filterLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ExplicitContentCopyWith<$Res>
    implements $ExplicitContentCopyWith<$Res> {
  factory _$$_ExplicitContentCopyWith(
          _$_ExplicitContent value, $Res Function(_$_ExplicitContent) then) =
      __$$_ExplicitContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'filter_enabled') bool filterEnabled,
      @JsonKey(name: 'filter_locked') bool filterLocked});
}

/// @nodoc
class __$$_ExplicitContentCopyWithImpl<$Res>
    extends _$ExplicitContentCopyWithImpl<$Res>
    implements _$$_ExplicitContentCopyWith<$Res> {
  __$$_ExplicitContentCopyWithImpl(
      _$_ExplicitContent _value, $Res Function(_$_ExplicitContent) _then)
      : super(_value, (v) => _then(v as _$_ExplicitContent));

  @override
  _$_ExplicitContent get _value => super._value as _$_ExplicitContent;

  @override
  $Res call({
    Object? filterEnabled = freezed,
    Object? filterLocked = freezed,
  }) {
    return _then(_$_ExplicitContent(
      filterEnabled: filterEnabled == freezed
          ? _value.filterEnabled
          : filterEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      filterLocked: filterLocked == freezed
          ? _value.filterLocked
          : filterLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExplicitContent implements _ExplicitContent {
  const _$_ExplicitContent(
      {@JsonKey(name: 'filter_enabled') required this.filterEnabled,
      @JsonKey(name: 'filter_locked') required this.filterLocked});

  factory _$_ExplicitContent.fromJson(Map<String, dynamic> json) =>
      _$$_ExplicitContentFromJson(json);

  @override
  @JsonKey(name: 'filter_enabled')
  final bool filterEnabled;
  @override
  @JsonKey(name: 'filter_locked')
  final bool filterLocked;

  @override
  String toString() {
    return 'ExplicitContent(filterEnabled: $filterEnabled, filterLocked: $filterLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExplicitContent &&
            const DeepCollectionEquality()
                .equals(other.filterEnabled, filterEnabled) &&
            const DeepCollectionEquality()
                .equals(other.filterLocked, filterLocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filterEnabled),
      const DeepCollectionEquality().hash(filterLocked));

  @JsonKey(ignore: true)
  @override
  _$$_ExplicitContentCopyWith<_$_ExplicitContent> get copyWith =>
      __$$_ExplicitContentCopyWithImpl<_$_ExplicitContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExplicitContentToJson(
      this,
    );
  }
}

abstract class _ExplicitContent implements ExplicitContent {
  const factory _ExplicitContent(
          {@JsonKey(name: 'filter_enabled') required final bool filterEnabled,
          @JsonKey(name: 'filter_locked') required final bool filterLocked}) =
      _$_ExplicitContent;

  factory _ExplicitContent.fromJson(Map<String, dynamic> json) =
      _$_ExplicitContent.fromJson;

  @override
  @JsonKey(name: 'filter_enabled')
  bool get filterEnabled;
  @override
  @JsonKey(name: 'filter_locked')
  bool get filterLocked;
  @override
  @JsonKey(ignore: true)
  _$$_ExplicitContentCopyWith<_$_ExplicitContent> get copyWith =>
      throw _privateConstructorUsedError;
}
