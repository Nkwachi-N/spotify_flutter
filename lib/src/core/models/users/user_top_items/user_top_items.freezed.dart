// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_top_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTopItems _$UserTopItemsFromJson(
  Map<String, dynamic> json,
) {
  return UserTopItemsArtist.fromJson(
    json,
  );
}

/// @nodoc
mixin _$UserTopItems {
  String? get hRef => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  List<Artist> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int limit, int offset,
            String? previous, int? total, List<Artist> items)
        artists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int limit, int offset, String? previous,
            int? total, List<Artist> items)?
        artists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int limit, int offset, String? previous,
            int? total, List<Artist> items)?
        artists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTopItemsArtist value) artists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTopItemsArtist value)? artists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTopItemsArtist value)? artists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTopItemsCopyWith<UserTopItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTopItemsCopyWith<$Res> {
  factory $UserTopItemsCopyWith(
          UserTopItems value, $Res Function(UserTopItems) then) =
      _$UserTopItemsCopyWithImpl<$Res>;
  $Res call(
      {String? hRef,
      int limit,
      int offset,
      String? previous,
      int? total,
      List<Artist> items});
}

/// @nodoc
class _$UserTopItemsCopyWithImpl<$Res> implements $UserTopItemsCopyWith<$Res> {
  _$UserTopItemsCopyWithImpl(this._value, this._then);

  final UserTopItems _value;
  // ignore: unused_field
  final $Res Function(UserTopItems) _then;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc
abstract class _$$UserTopItemsArtistCopyWith<$Res>
    implements $UserTopItemsCopyWith<$Res> {
  factory _$$UserTopItemsArtistCopyWith(_$UserTopItemsArtist value,
          $Res Function(_$UserTopItemsArtist) then) =
      __$$UserTopItemsArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hRef,
      int limit,
      int offset,
      String? previous,
      int? total,
      List<Artist> items});
}

/// @nodoc
class __$$UserTopItemsArtistCopyWithImpl<$Res>
    extends _$UserTopItemsCopyWithImpl<$Res>
    implements _$$UserTopItemsArtistCopyWith<$Res> {
  __$$UserTopItemsArtistCopyWithImpl(
      _$UserTopItemsArtist _value, $Res Function(_$UserTopItemsArtist) _then)
      : super(_value, (v) => _then(v as _$UserTopItemsArtist));

  @override
  _$UserTopItemsArtist get _value => super._value as _$UserTopItemsArtist;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$UserTopItemsArtist(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTopItemsArtist implements UserTopItemsArtist {
  const _$UserTopItemsArtist(
      {this.hRef,
      required this.limit,
      required this.offset,
      this.previous,
      this.total,
      required final List<Artist> items})
      : _items = items;

  factory _$UserTopItemsArtist.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$UserTopItemsArtistFromJson(
        json,
      );

  @override
  final String? hRef;
  @override
  final int limit;
  @override
  final int offset;
  @override
  final String? previous;
  @override
  final int? total;
  final List<Artist> _items;
  @override
  List<Artist> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'UserTopItems.artists(hRef: $hRef, limit: $limit, offset: $offset, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTopItemsArtist &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hRef),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$UserTopItemsArtistCopyWith<_$UserTopItemsArtist> get copyWith =>
      __$$UserTopItemsArtistCopyWithImpl<_$UserTopItemsArtist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int limit, int offset,
            String? previous, int? total, List<Artist> items)
        artists,
  }) {
    return artists(hRef, limit, offset, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int limit, int offset, String? previous,
            int? total, List<Artist> items)?
        artists,
  }) {
    return artists?.call(hRef, limit, offset, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int limit, int offset, String? previous,
            int? total, List<Artist> items)?
        artists,
    required TResult orElse(),
  }) {
    if (artists != null) {
      return artists(hRef, limit, offset, previous, total, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserTopItemsArtist value) artists,
  }) {
    return artists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserTopItemsArtist value)? artists,
  }) {
    return artists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserTopItemsArtist value)? artists,
    required TResult orElse(),
  }) {
    if (artists != null) {
      return artists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTopItemsArtistToJson(
      this,
    );
  }
}

abstract class UserTopItemsArtist implements UserTopItems {
  const factory UserTopItemsArtist(
      {final String? hRef,
      required final int limit,
      required final int offset,
      final String? previous,
      final int? total,
      required final List<Artist> items}) = _$UserTopItemsArtist;

  factory UserTopItemsArtist.fromJson(
    Map<String, dynamic> json,
  ) = _$UserTopItemsArtist.fromJson;

  @override
  String? get hRef;
  @override
  int get limit;
  @override
  int get offset;
  @override
  String? get previous;
  @override
  int? get total;
  @override
  List<Artist> get items;
  @override
  @JsonKey(ignore: true)
  _$$UserTopItemsArtistCopyWith<_$UserTopItemsArtist> get copyWith =>
      throw _privateConstructorUsedError;
}
