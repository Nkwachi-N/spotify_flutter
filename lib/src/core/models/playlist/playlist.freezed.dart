// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return _Playlist.fromJson(json);
}

/// @nodoc
mixin _$Playlist {
  bool? get collaborative => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  String? get hRef => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  UserProfile? get owner => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  @JsonKey(name: 'snapshot_id')
  String? get snapshotId => throw _privateConstructorUsedError;
  PaginatedResponseTracks? get tracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
  $Res call(
      {bool? collaborative,
      String? description,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      Followers? followers,
      String? hRef,
      String? id,
      List<Image>? images,
      String? name,
      UserProfile? owner,
      bool? public,
      @JsonKey(name: 'snapshot_id') String? snapshotId,
      PaginatedResponseTracks? tracks,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
  $UserProfileCopyWith<$Res>? get owner;
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? hRef = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapshotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      collaborative: collaborative == freezed
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      snapshotId: snapshotId == freezed
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as PaginatedResponseTracks?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value));
    });
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
  $UserProfileCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$$_PlaylistCopyWith(
          _$_Playlist value, $Res Function(_$_Playlist) then) =
      __$$_PlaylistCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? collaborative,
      String? description,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      Followers? followers,
      String? hRef,
      String? id,
      List<Image>? images,
      String? name,
      UserProfile? owner,
      bool? public,
      @JsonKey(name: 'snapshot_id') String? snapshotId,
      PaginatedResponseTracks? tracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersCopyWith<$Res>? get followers;
  @override
  $UserProfileCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$$_PlaylistCopyWith<$Res> {
  __$$_PlaylistCopyWithImpl(
      _$_Playlist _value, $Res Function(_$_Playlist) _then)
      : super(_value, (v) => _then(v as _$_Playlist));

  @override
  _$_Playlist get _value => super._value as _$_Playlist;

  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? hRef = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapshotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_Playlist(
      collaborative: collaborative == freezed
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      snapshotId: snapshotId == freezed
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as PaginatedResponseTracks?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Playlist implements _Playlist {
  const _$_Playlist(
      {this.collaborative,
      this.description,
      @JsonKey(name: 'external_urls') this.externalUrls,
      this.followers,
      this.hRef,
      this.id,
      final List<Image>? images,
      this.name,
      this.owner,
      this.public,
      @JsonKey(name: 'snapshot_id') this.snapshotId,
      this.tracks,
      this.type,
      this.uri})
      : _images = images;

  factory _$_Playlist.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistFromJson(json);

  @override
  final bool? collaborative;
  @override
  final String? description;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  @override
  final Followers? followers;
  @override
  final String? hRef;
  @override
  final String? id;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final UserProfile? owner;
  @override
  final bool? public;
  @override
  @JsonKey(name: 'snapshot_id')
  final String? snapshotId;
  @override
  final PaginatedResponseTracks? tracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'Playlist(collaborative: $collaborative, description: $description, externalUrls: $externalUrls, followers: $followers, hRef: $hRef, id: $id, images: $images, name: $name, owner: $owner, public: $public, snapshotId: $snapshotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Playlist &&
            const DeepCollectionEquality()
                .equals(other.collaborative, collaborative) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.externalUrls, externalUrls) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.public, public) &&
            const DeepCollectionEquality()
                .equals(other.snapshotId, snapshotId) &&
            const DeepCollectionEquality().equals(other.tracks, tracks) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.uri, uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(collaborative),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(externalUrls),
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(hRef),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(public),
      const DeepCollectionEquality().hash(snapshotId),
      const DeepCollectionEquality().hash(tracks),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(uri));

  @JsonKey(ignore: true)
  @override
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      __$$_PlaylistCopyWithImpl<_$_Playlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistToJson(
      this,
    );
  }
}

abstract class _Playlist implements Playlist {
  const factory _Playlist(
      {final bool? collaborative,
      final String? description,
      @JsonKey(name: 'external_urls') final ExternalUrls? externalUrls,
      final Followers? followers,
      final String? hRef,
      final String? id,
      final List<Image>? images,
      final String? name,
      final UserProfile? owner,
      final bool? public,
      @JsonKey(name: 'snapshot_id') final String? snapshotId,
      final PaginatedResponseTracks? tracks,
      final String? type,
      final String? uri}) = _$_Playlist;

  factory _Playlist.fromJson(Map<String, dynamic> json) = _$_Playlist.fromJson;

  @override
  bool? get collaborative;
  @override
  String? get description;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls;
  @override
  Followers? get followers;
  @override
  String? get hRef;
  @override
  String? get id;
  @override
  List<Image>? get images;
  @override
  String? get name;
  @override
  UserProfile? get owner;
  @override
  bool? get public;
  @override
  @JsonKey(name: 'snapshot_id')
  String? get snapshotId;
  @override
  PaginatedResponseTracks? get tracks;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
