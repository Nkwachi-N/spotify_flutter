// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  String get uri => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_local')
  bool get isLocal => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_number')
  int get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Restrictions? get restrictions => throw _privateConstructorUsedError;
  @JsonKey(name: 'linked_from')
  Track? get linkedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_playable')
  bool get isPlayable => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get hRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_ids')
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  bool get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'disc_number')
  int get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  List<Artist>? get artists => throw _privateConstructorUsedError;
  Album? get album => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call(
      {String uri,
      String type,
      @JsonKey(name: 'is_local') bool isLocal,
      @JsonKey(name: 'track_number') int trackNumber,
      @JsonKey(name: 'preview_url') String? previewUrl,
      int? popularity,
      String name,
      Restrictions? restrictions,
      @JsonKey(name: 'linked_from') Track? linkedFrom,
      @JsonKey(name: 'is_playable') bool isPlayable,
      String id,
      String? hRef,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      @JsonKey(name: 'external_ids') ExternalIds? externalIds,
      bool explicit,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      List<Artist>? artists,
      Album? album});

  $RestrictionsCopyWith<$Res>? get restrictions;
  $TrackCopyWith<$Res>? get linkedFrom;
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $ExternalIdsCopyWith<$Res>? get externalIds;
  $AlbumCopyWith<$Res>? get album;
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

  @override
  $Res call({
    Object? uri = freezed,
    Object? type = freezed,
    Object? isLocal = freezed,
    Object? trackNumber = freezed,
    Object? previewUrl = freezed,
    Object? popularity = freezed,
    Object? name = freezed,
    Object? restrictions = freezed,
    Object? linkedFrom = freezed,
    Object? isPlayable = freezed,
    Object? id = freezed,
    Object? hRef = freezed,
    Object? externalUrls = freezed,
    Object? externalIds = freezed,
    Object? explicit = freezed,
    Object? durationMs = freezed,
    Object? discNumber = freezed,
    Object? availableMarkets = freezed,
    Object? artists = freezed,
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restrictions: restrictions == freezed
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      linkedFrom: linkedFrom == freezed
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as Track?,
      isPlayable: isPlayable == freezed
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      externalIds: externalIds == freezed
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      explicit: explicit == freezed
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      durationMs: durationMs == freezed
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      discNumber: discNumber == freezed
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: availableMarkets == freezed
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artists: artists == freezed
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
    ));
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

  @override
  $TrackCopyWith<$Res>? get linkedFrom {
    if (_value.linkedFrom == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.linkedFrom!, (value) {
      return _then(_value.copyWith(linkedFrom: value));
    });
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
  $ExternalIdsCopyWith<$Res>? get externalIds {
    if (_value.externalIds == null) {
      return null;
    }

    return $ExternalIdsCopyWith<$Res>(_value.externalIds!, (value) {
      return _then(_value.copyWith(externalIds: value));
    });
  }

  @override
  $AlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc
abstract class _$$_TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$_TrackCopyWith(_$_Track value, $Res Function(_$_Track) then) =
      __$$_TrackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uri,
      String type,
      @JsonKey(name: 'is_local') bool isLocal,
      @JsonKey(name: 'track_number') int trackNumber,
      @JsonKey(name: 'preview_url') String? previewUrl,
      int? popularity,
      String name,
      Restrictions? restrictions,
      @JsonKey(name: 'linked_from') Track? linkedFrom,
      @JsonKey(name: 'is_playable') bool isPlayable,
      String id,
      String? hRef,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      @JsonKey(name: 'external_ids') ExternalIds? externalIds,
      bool explicit,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'disc_number') int discNumber,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      List<Artist>? artists,
      Album? album});

  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
  @override
  $TrackCopyWith<$Res>? get linkedFrom;
  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
  @override
  $AlbumCopyWith<$Res>? get album;
}

/// @nodoc
class __$$_TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$$_TrackCopyWith<$Res> {
  __$$_TrackCopyWithImpl(_$_Track _value, $Res Function(_$_Track) _then)
      : super(_value, (v) => _then(v as _$_Track));

  @override
  _$_Track get _value => super._value as _$_Track;

  @override
  $Res call({
    Object? uri = freezed,
    Object? type = freezed,
    Object? isLocal = freezed,
    Object? trackNumber = freezed,
    Object? previewUrl = freezed,
    Object? popularity = freezed,
    Object? name = freezed,
    Object? restrictions = freezed,
    Object? linkedFrom = freezed,
    Object? isPlayable = freezed,
    Object? id = freezed,
    Object? hRef = freezed,
    Object? externalUrls = freezed,
    Object? externalIds = freezed,
    Object? explicit = freezed,
    Object? durationMs = freezed,
    Object? discNumber = freezed,
    Object? availableMarkets = freezed,
    Object? artists = freezed,
    Object? album = freezed,
  }) {
    return _then(_$_Track(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restrictions: restrictions == freezed
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      linkedFrom: linkedFrom == freezed
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as Track?,
      isPlayable: isPlayable == freezed
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hRef: hRef == freezed
          ? _value.hRef
          : hRef // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      externalIds: externalIds == freezed
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      explicit: explicit == freezed
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      durationMs: durationMs == freezed
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      discNumber: discNumber == freezed
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      availableMarkets: availableMarkets == freezed
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artists: artists == freezed
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Track implements _Track {
  const _$_Track(
      {required this.uri,
      required this.type,
      @JsonKey(name: 'is_local') required this.isLocal,
      @JsonKey(name: 'track_number') required this.trackNumber,
      @JsonKey(name: 'preview_url') this.previewUrl,
      this.popularity,
      required this.name,
      this.restrictions,
      @JsonKey(name: 'linked_from') this.linkedFrom,
      @JsonKey(name: 'is_playable') required this.isPlayable,
      required this.id,
      this.hRef,
      @JsonKey(name: 'external_urls') this.externalUrls,
      @JsonKey(name: 'external_ids') this.externalIds,
      required this.explicit,
      @JsonKey(name: 'duration_ms') required this.durationMs,
      @JsonKey(name: 'disc_number') required this.discNumber,
      @JsonKey(name: 'available_markets') final List<String>? availableMarkets,
      final List<Artist>? artists,
      this.album})
      : _availableMarkets = availableMarkets,
        _artists = artists;

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  final String uri;
  @override
  final String type;
  @override
  @JsonKey(name: 'is_local')
  final bool isLocal;
  @override
  @JsonKey(name: 'track_number')
  final int trackNumber;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  final int? popularity;
  @override
  final String name;
  @override
  final Restrictions? restrictions;
  @override
  @JsonKey(name: 'linked_from')
  final Track? linkedFrom;
  @override
  @JsonKey(name: 'is_playable')
  final bool isPlayable;
  @override
  final String id;
  @override
  final String? hRef;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  @override
  @JsonKey(name: 'external_ids')
  final ExternalIds? externalIds;
  @override
  final bool explicit;
  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;
  @override
  @JsonKey(name: 'disc_number')
  final int discNumber;
  final List<String>? _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  final Album? album;

  @override
  String toString() {
    return 'Track(uri: $uri, type: $type, isLocal: $isLocal, trackNumber: $trackNumber, previewUrl: $previewUrl, popularity: $popularity, name: $name, restrictions: $restrictions, linkedFrom: $linkedFrom, isPlayable: $isPlayable, id: $id, hRef: $hRef, externalUrls: $externalUrls, externalIds: $externalIds, explicit: $explicit, durationMs: $durationMs, discNumber: $discNumber, availableMarkets: $availableMarkets, artists: $artists, album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Track &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.isLocal, isLocal) &&
            const DeepCollectionEquality()
                .equals(other.trackNumber, trackNumber) &&
            const DeepCollectionEquality()
                .equals(other.previewUrl, previewUrl) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.restrictions, restrictions) &&
            const DeepCollectionEquality()
                .equals(other.linkedFrom, linkedFrom) &&
            const DeepCollectionEquality()
                .equals(other.isPlayable, isPlayable) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.hRef, hRef) &&
            const DeepCollectionEquality()
                .equals(other.externalUrls, externalUrls) &&
            const DeepCollectionEquality()
                .equals(other.externalIds, externalIds) &&
            const DeepCollectionEquality().equals(other.explicit, explicit) &&
            const DeepCollectionEquality()
                .equals(other.durationMs, durationMs) &&
            const DeepCollectionEquality()
                .equals(other.discNumber, discNumber) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other.album, album));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(uri),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(isLocal),
        const DeepCollectionEquality().hash(trackNumber),
        const DeepCollectionEquality().hash(previewUrl),
        const DeepCollectionEquality().hash(popularity),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(restrictions),
        const DeepCollectionEquality().hash(linkedFrom),
        const DeepCollectionEquality().hash(isPlayable),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(hRef),
        const DeepCollectionEquality().hash(externalUrls),
        const DeepCollectionEquality().hash(externalIds),
        const DeepCollectionEquality().hash(explicit),
        const DeepCollectionEquality().hash(durationMs),
        const DeepCollectionEquality().hash(discNumber),
        const DeepCollectionEquality().hash(_availableMarkets),
        const DeepCollectionEquality().hash(_artists),
        const DeepCollectionEquality().hash(album)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      __$$_TrackCopyWithImpl<_$_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {required final String uri,
      required final String type,
      @JsonKey(name: 'is_local') required final bool isLocal,
      @JsonKey(name: 'track_number') required final int trackNumber,
      @JsonKey(name: 'preview_url') final String? previewUrl,
      final int? popularity,
      required final String name,
      final Restrictions? restrictions,
      @JsonKey(name: 'linked_from') final Track? linkedFrom,
      @JsonKey(name: 'is_playable') required final bool isPlayable,
      required final String id,
      final String? hRef,
      @JsonKey(name: 'external_urls') final ExternalUrls? externalUrls,
      @JsonKey(name: 'external_ids') final ExternalIds? externalIds,
      required final bool explicit,
      @JsonKey(name: 'duration_ms') required final int durationMs,
      @JsonKey(name: 'disc_number') required final int discNumber,
      @JsonKey(name: 'available_markets') final List<String>? availableMarkets,
      final List<Artist>? artists,
      final Album? album}) = _$_Track;

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  String get uri;
  @override
  String get type;
  @override
  @JsonKey(name: 'is_local')
  bool get isLocal;
  @override
  @JsonKey(name: 'track_number')
  int get trackNumber;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  int? get popularity;
  @override
  String get name;
  @override
  Restrictions? get restrictions;
  @override
  @JsonKey(name: 'linked_from')
  Track? get linkedFrom;
  @override
  @JsonKey(name: 'is_playable')
  bool get isPlayable;
  @override
  String get id;
  @override
  String? get hRef;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls;
  @override
  @JsonKey(name: 'external_ids')
  ExternalIds? get externalIds;
  @override
  bool get explicit;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  @JsonKey(name: 'disc_number')
  int get discNumber;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets;
  @override
  List<Artist>? get artists;
  @override
  Album? get album;
  @override
  @JsonKey(ignore: true)
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      throw _privateConstructorUsedError;
}
