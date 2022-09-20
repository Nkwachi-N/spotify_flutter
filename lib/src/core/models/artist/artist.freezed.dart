// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  Followers? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res>;
  $Res call(
      {Followers? followers,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      List<String>? genres,
      List<Image>? images,
      String? href,
      String id,
      String name,
      int? popularity,
      String uri,
      String? type});

  $FollowersCopyWith<$Res>? get followers;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res> implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  final Artist _value;
  // ignore: unused_field
  final $Res Function(Artist) _then;

  @override
  $Res call({
    Object? followers = freezed,
    Object? externalUrls = freezed,
    Object? genres = freezed,
    Object? images = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? uri = freezed,
    Object? type = freezed,
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
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$_ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$_ArtistCopyWith(_$_Artist value, $Res Function(_$_Artist) then) =
      __$$_ArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {Followers? followers,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      List<String>? genres,
      List<Image>? images,
      String? href,
      String id,
      String name,
      int? popularity,
      String uri,
      String? type});

  @override
  $FollowersCopyWith<$Res>? get followers;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$_ArtistCopyWithImpl<$Res> extends _$ArtistCopyWithImpl<$Res>
    implements _$$_ArtistCopyWith<$Res> {
  __$$_ArtistCopyWithImpl(_$_Artist _value, $Res Function(_$_Artist) _then)
      : super(_value, (v) => _then(v as _$_Artist));

  @override
  _$_Artist get _value => super._value as _$_Artist;

  @override
  $Res call({
    Object? followers = freezed,
    Object? externalUrls = freezed,
    Object? genres = freezed,
    Object? images = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? uri = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Artist(
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artist implements _Artist {
  const _$_Artist(
      {this.followers,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      final List<String>? genres,
      final List<Image>? images,
      this.href,
      required this.id,
      required this.name,
      this.popularity,
      required this.uri,
      this.type})
      : _genres = genres,
        _images = images;

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

  @override
  final Followers? followers;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls externalUrls;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? href;
  @override
  final String id;
  @override
  final String name;
  @override
  final int? popularity;
  @override
  final String uri;
  @override
  final String? type;

  @override
  String toString() {
    return 'Artist(followers: $followers, externalUrls: $externalUrls, genres: $genres, images: $images, href: $href, id: $id, name: $name, popularity: $popularity, uri: $uri, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artist &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality()
                .equals(other.externalUrls, externalUrls) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.href, href) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(externalUrls),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(href),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(uri),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      __$$_ArtistCopyWithImpl<_$_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {final Followers? followers,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      final List<String>? genres,
      final List<Image>? images,
      final String? href,
      required final String id,
      required final String name,
      final int? popularity,
      required final String uri,
      final String? type}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

  @override
  Followers? get followers;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls;
  @override
  List<String>? get genres;
  @override
  List<Image>? get images;
  @override
  String? get href;
  @override
  String get id;
  @override
  String get name;
  @override
  int? get popularity;
  @override
  String get uri;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      throw _privateConstructorUsedError;
}
