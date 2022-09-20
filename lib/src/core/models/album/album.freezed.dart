// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  Followers? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'album_type')
  String get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tracks')
  int get totalTracks => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  String? get hRef => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date_precision')
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  Restrictions? get restrictions => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  List<Artist>? get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'album_group')
  String? get albumGroup => throw _privateConstructorUsedError;
  List<Track>? get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call(
      {Followers? followers,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'total_tracks') int totalTracks,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      String? hRef,
      String id,
      String name,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String uri,
      List<Image> images,
      List<Artist>? artists,
      @JsonKey(name: 'album_group') String? albumGroup,
      List<Track>? tracks});

  $FollowersCopyWith<$Res>? get followers;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  $RestrictionsCopyWith<$Res>? get restrictions;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object? followers = freezed,
    Object? externalUrls = freezed,
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? hRef = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restrictions = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? images = freezed,
    Object? artists = freezed,
    Object? albumGroup = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      albumType: albumType == freezed
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: totalTracks == freezed
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: availableMarkets == freezed
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: releaseDatePrecision == freezed
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictions: restrictions == freezed
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      albumGroup: albumGroup == freezed
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ));
  }

  @override
  $FollowersCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $FollowersCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value));
    });
  }

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value));
    });
  }

  @override
  $RestrictionsCopyWith<$Res>? get restrictions {
    if (_value.restrictions == null) {
      return null;
    }

    return $RestrictionsCopyWith<$Res>(_value.restrictions!, (value) {
      return _then(_value.copyWith(restrictions: value));
    });
  }
}

/// @nodoc
abstract class _$$_AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$_AlbumCopyWith(_$_Album value, $Res Function(_$_Album) then) =
      __$$_AlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {Followers? followers,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'total_tracks') int totalTracks,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      String? hRef,
      String id,
      String name,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String uri,
      List<Image> images,
      List<Artist>? artists,
      @JsonKey(name: 'album_group') String? albumGroup,
      List<Track>? tracks});

  @override
  $FollowersCopyWith<$Res>? get followers;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
}

/// @nodoc
class __$$_AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$$_AlbumCopyWith<$Res> {
  __$$_AlbumCopyWithImpl(_$_Album _value, $Res Function(_$_Album) _then)
      : super(_value, (v) => _then(v as _$_Album));

  @override
  _$_Album get _value => super._value as _$_Album;

  @override
  $Res call({
    Object? followers = freezed,
    Object? externalUrls = freezed,
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? hRef = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restrictions = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? images = freezed,
    Object? artists = freezed,
    Object? albumGroup = freezed,
    Object? tracks = freezed,
  }) {
    return _then(_$_Album(
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      albumType: albumType == freezed
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: totalTracks == freezed
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: availableMarkets == freezed
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: releaseDatePrecision == freezed
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictions: restrictions == freezed
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      artists: artists == freezed
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      albumGroup: albumGroup == freezed
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: tracks == freezed
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Album implements _Album {
  const _$_Album(
      {this.followers,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      @JsonKey(name: 'album_type') required this.albumType,
      @JsonKey(name: 'total_tracks') required this.totalTracks,
      @JsonKey(name: 'available_markets') final List<String>? availableMarkets,
      this.hRef,
      required this.id,
      required this.name,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'release_date_precision') this.releaseDatePrecision,
      this.restrictions,
      this.type,
      required this.uri,
      required final List<Image> images,
      final List<Artist>? artists,
      @JsonKey(name: 'album_group') this.albumGroup,
      final List<Track>? tracks})
      : _availableMarkets = availableMarkets,
        _images = images,
        _artists = artists,
        _tracks = tracks;

  factory _$_Album.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumFromJson(json);

  @override
  final Followers? followers;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: 'album_type')
  final String albumType;
  @override
  @JsonKey(name: 'total_tracks')
  final int totalTracks;
  final List<String>? _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? hRef;
  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  final String? releaseDatePrecision;
  @override
  final Restrictions? restrictions;
  @override
  final String? type;
  @override
  final String uri;
  final List<Image> _images;
  @override
  List<Image> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<Artist>? _artists;
  @override
  List<Artist>? get artists {
    final value = _artists;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'album_group')
  final String? albumGroup;
  final List<Track>? _tracks;
  @override
  List<Track>? get tracks {
    final value = _tracks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Album(followers: $followers, externalUrls: $externalUrls, albumType: $albumType, totalTracks: $totalTracks, availableMarkets: $availableMarkets, hRef: $hRef, id: $id, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, restrictions: $restrictions, type: $type, uri: $uri, images: $images, artists: $artists, albumGroup: $albumGroup, tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Album &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality()
                .equals(other.externalUrls, externalUrls) &&
            const DeepCollectionEquality().equals(other.albumType, albumType) &&
            const DeepCollectionEquality()
                .equals(other.totalTracks, totalTracks) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality()
                .equals(other.releaseDatePrecision, releaseDatePrecision) &&
            const DeepCollectionEquality()
                .equals(other.restrictions, restrictions) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other.albumGroup, albumGroup) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(externalUrls),
      const DeepCollectionEquality().hash(albumType),
      const DeepCollectionEquality().hash(totalTracks),
      const DeepCollectionEquality().hash(_availableMarkets),
      const DeepCollectionEquality().hash(hRef),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(releaseDatePrecision),
      const DeepCollectionEquality().hash(restrictions),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(uri),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(albumGroup),
      const DeepCollectionEquality().hash(_tracks));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      __$$_AlbumCopyWithImpl<_$_Album>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {final Followers? followers,
      @JsonKey(name: 'external_urls')
          required final ExternalUrls externalUrls,
      @JsonKey(name: 'album_type')
          required final String albumType,
      @JsonKey(name: 'total_tracks')
          required final int totalTracks,
      @JsonKey(name: 'available_markets')
          final List<String>? availableMarkets,
      final String? hRef,
      required final String id,
      required final String name,
      @JsonKey(name: 'release_date')
          final String? releaseDate,
      @JsonKey(name: 'release_date_precision')
          final String? releaseDatePrecision,
      final Restrictions? restrictions,
      final String? type,
      required final String uri,
      required final List<Image> images,
      final List<Artist>? artists,
      @JsonKey(name: 'album_group')
          final String? albumGroup,
      final List<Track>? tracks}) = _$_Album;

  factory _Album.fromJson(Map<String, dynamic> json) = _$_Album.fromJson;

  @override
  Followers? get followers;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: 'album_type')
  String get albumType;
  @override
  @JsonKey(name: 'total_tracks')
  int get totalTracks;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets;
  @override
  String? get hRef;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  String? get releaseDatePrecision;
  @override
  Restrictions? get restrictions;
  @override
  String? get type;
  @override
  String get uri;
  @override
  List<Image> get images;
  @override
  List<Artist>? get artists;
  @override
  @JsonKey(name: 'album_group')
  String? get albumGroup;
  @override
  List<Track>? get tracks;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      throw _privateConstructorUsedError;
}
