// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedResponse _$PaginatedResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'artists':
      return PaginatedResponseArtist.fromJson(json);
    case 'albums':
      return PaginatedResponseAlbums.fromJson(json);
    case 'tracks':
      return PaginatedResponseTracks.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PaginatedResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PaginatedResponse {
  String? get hRef => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Artist>? items)
        artists,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Album>? items)
        albums,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Track> items)
        tracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedResponseArtist value) artists,
    required TResult Function(PaginatedResponseAlbums value) albums,
    required TResult Function(PaginatedResponseTracks value) tracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<PaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<$Res> {
  factory $PaginatedResponseCopyWith(
          PaginatedResponse value, $Res Function(PaginatedResponse) then) =
      _$PaginatedResponseCopyWithImpl<$Res>;
  $Res call(
      {String? hRef,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  final PaginatedResponse _value;
  // ignore: unused_field
  final $Res Function(PaginatedResponse) _then;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$PaginatedResponseArtistCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$$PaginatedResponseArtistCopyWith(_$PaginatedResponseArtist value,
          $Res Function(_$PaginatedResponseArtist) then) =
      __$$PaginatedResponseArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hRef,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total,
      List<Artist>? items});
}

/// @nodoc
class __$$PaginatedResponseArtistCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res>
    implements _$$PaginatedResponseArtistCopyWith<$Res> {
  __$$PaginatedResponseArtistCopyWithImpl(_$PaginatedResponseArtist _value,
      $Res Function(_$PaginatedResponseArtist) _then)
      : super(_value, (v) => _then(v as _$PaginatedResponseArtist));

  @override
  _$PaginatedResponseArtist get _value =>
      super._value as _$PaginatedResponseArtist;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PaginatedResponseArtist(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Artist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedResponseArtist implements PaginatedResponseArtist {
  const _$PaginatedResponseArtist(
      {this.hRef,
      this.limit,
      this.offset,
      this.next,
      this.previous,
      this.total,
      final List<Artist>? items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'artists';

  factory _$PaginatedResponseArtist.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedResponseArtistFromJson(json);

  @override
  final String? hRef;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? total;
  final List<Artist>? _items;
  @override
  List<Artist>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaginatedResponse.artists(hRef: $hRef, limit: $limit, offset: $offset, next: $next, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseArtist &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.next, next) &&
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
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$PaginatedResponseArtistCopyWith<_$PaginatedResponseArtist> get copyWith =>
      __$$PaginatedResponseArtistCopyWithImpl<_$PaginatedResponseArtist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Artist>? items)
        artists,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Album>? items)
        albums,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Track> items)
        tracks,
  }) {
    return artists(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
  }) {
    return artists?.call(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
    required TResult orElse(),
  }) {
    if (artists != null) {
      return artists(hRef, limit, offset, next, previous, total, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedResponseArtist value) artists,
    required TResult Function(PaginatedResponseAlbums value) albums,
    required TResult Function(PaginatedResponseTracks value) tracks,
  }) {
    return artists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
  }) {
    return artists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
    required TResult orElse(),
  }) {
    if (artists != null) {
      return artists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedResponseArtistToJson(
      this,
    );
  }
}

abstract class PaginatedResponseArtist implements PaginatedResponse {
  const factory PaginatedResponseArtist(
      {final String? hRef,
      final int? limit,
      final int? offset,
      final String? next,
      final String? previous,
      final int? total,
      final List<Artist>? items}) = _$PaginatedResponseArtist;

  factory PaginatedResponseArtist.fromJson(Map<String, dynamic> json) =
      _$PaginatedResponseArtist.fromJson;

  @override
  String? get hRef;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  int? get total;
  List<Artist>? get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseArtistCopyWith<_$PaginatedResponseArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedResponseAlbumsCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$$PaginatedResponseAlbumsCopyWith(_$PaginatedResponseAlbums value,
          $Res Function(_$PaginatedResponseAlbums) then) =
      __$$PaginatedResponseAlbumsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hRef,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total,
      List<Album>? items});
}

/// @nodoc
class __$$PaginatedResponseAlbumsCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res>
    implements _$$PaginatedResponseAlbumsCopyWith<$Res> {
  __$$PaginatedResponseAlbumsCopyWithImpl(_$PaginatedResponseAlbums _value,
      $Res Function(_$PaginatedResponseAlbums) _then)
      : super(_value, (v) => _then(v as _$PaginatedResponseAlbums));

  @override
  _$PaginatedResponseAlbums get _value =>
      super._value as _$PaginatedResponseAlbums;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PaginatedResponseAlbums(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Album>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedResponseAlbums implements PaginatedResponseAlbums {
  const _$PaginatedResponseAlbums(
      {this.hRef,
      this.limit,
      this.offset,
      this.next,
      this.previous,
      this.total,
      final List<Album>? items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'albums';

  factory _$PaginatedResponseAlbums.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedResponseAlbumsFromJson(json);

  @override
  final String? hRef;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? total;
  final List<Album>? _items;
  @override
  List<Album>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaginatedResponse.albums(hRef: $hRef, limit: $limit, offset: $offset, next: $next, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseAlbums &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.next, next) &&
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
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$PaginatedResponseAlbumsCopyWith<_$PaginatedResponseAlbums> get copyWith =>
      __$$PaginatedResponseAlbumsCopyWithImpl<_$PaginatedResponseAlbums>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Artist>? items)
        artists,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Album>? items)
        albums,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Track> items)
        tracks,
  }) {
    return albums(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
  }) {
    return albums?.call(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
    required TResult orElse(),
  }) {
    if (albums != null) {
      return albums(hRef, limit, offset, next, previous, total, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedResponseArtist value) artists,
    required TResult Function(PaginatedResponseAlbums value) albums,
    required TResult Function(PaginatedResponseTracks value) tracks,
  }) {
    return albums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
  }) {
    return albums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
    required TResult orElse(),
  }) {
    if (albums != null) {
      return albums(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedResponseAlbumsToJson(
      this,
    );
  }
}

abstract class PaginatedResponseAlbums implements PaginatedResponse {
  const factory PaginatedResponseAlbums(
      {final String? hRef,
      final int? limit,
      final int? offset,
      final String? next,
      final String? previous,
      final int? total,
      final List<Album>? items}) = _$PaginatedResponseAlbums;

  factory PaginatedResponseAlbums.fromJson(Map<String, dynamic> json) =
      _$PaginatedResponseAlbums.fromJson;

  @override
  String? get hRef;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  int? get total;
  List<Album>? get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseAlbumsCopyWith<_$PaginatedResponseAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaginatedResponseTracksCopyWith<$Res>
    implements $PaginatedResponseCopyWith<$Res> {
  factory _$$PaginatedResponseTracksCopyWith(_$PaginatedResponseTracks value,
          $Res Function(_$PaginatedResponseTracks) then) =
      __$$PaginatedResponseTracksCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hRef,
      int? limit,
      int? offset,
      String? next,
      String? previous,
      int? total,
      List<Track> items});
}

/// @nodoc
class __$$PaginatedResponseTracksCopyWithImpl<$Res>
    extends _$PaginatedResponseCopyWithImpl<$Res>
    implements _$$PaginatedResponseTracksCopyWith<$Res> {
  __$$PaginatedResponseTracksCopyWithImpl(_$PaginatedResponseTracks _value,
      $Res Function(_$PaginatedResponseTracks) _then)
      : super(_value, (v) => _then(v as _$PaginatedResponseTracks));

  @override
  _$PaginatedResponseTracks get _value =>
      super._value as _$PaginatedResponseTracks;

  @override
  $Res call({
    Object? hRef = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$PaginatedResponseTracks(
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Track>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedResponseTracks implements PaginatedResponseTracks {
  const _$PaginatedResponseTracks(
      {this.hRef,
      this.limit,
      this.offset,
      this.next,
      this.previous,
      this.total,
      required final List<Track> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'tracks';

  factory _$PaginatedResponseTracks.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedResponseTracksFromJson(json);

  @override
  final String? hRef;
  @override
  final int? limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? total;
  final List<Track> _items;
  @override
  List<Track> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaginatedResponse.tracks(hRef: $hRef, limit: $limit, offset: $offset, next: $next, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseTracks &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.next, next) &&
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
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$PaginatedResponseTracksCopyWith<_$PaginatedResponseTracks> get copyWith =>
      __$$PaginatedResponseTracksCopyWithImpl<_$PaginatedResponseTracks>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Artist>? items)
        artists,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Album>? items)
        albums,
    required TResult Function(String? hRef, int? limit, int? offset,
            String? next, String? previous, int? total, List<Track> items)
        tracks,
  }) {
    return tracks(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
  }) {
    return tracks?.call(hRef, limit, offset, next, previous, total, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Artist>? items)?
        artists,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Album>? items)?
        albums,
    TResult Function(String? hRef, int? limit, int? offset, String? next,
            String? previous, int? total, List<Track> items)?
        tracks,
    required TResult orElse(),
  }) {
    if (tracks != null) {
      return tracks(hRef, limit, offset, next, previous, total, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaginatedResponseArtist value) artists,
    required TResult Function(PaginatedResponseAlbums value) albums,
    required TResult Function(PaginatedResponseTracks value) tracks,
  }) {
    return tracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
  }) {
    return tracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaginatedResponseArtist value)? artists,
    TResult Function(PaginatedResponseAlbums value)? albums,
    TResult Function(PaginatedResponseTracks value)? tracks,
    required TResult orElse(),
  }) {
    if (tracks != null) {
      return tracks(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedResponseTracksToJson(
      this,
    );
  }
}

abstract class PaginatedResponseTracks implements PaginatedResponse {
  const factory PaginatedResponseTracks(
      {final String? hRef,
      final int? limit,
      final int? offset,
      final String? next,
      final String? previous,
      final int? total,
      required final List<Track> items}) = _$PaginatedResponseTracks;

  factory PaginatedResponseTracks.fromJson(Map<String, dynamic> json) =
      _$PaginatedResponseTracks.fromJson;

  @override
  String? get hRef;
  @override
  int? get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  int? get total;
  List<Track> get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseTracksCopyWith<_$PaginatedResponseTracks> get copyWith =>
      throw _privateConstructorUsedError;
}
