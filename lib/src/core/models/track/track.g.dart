// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      uri: json['uri'] as String,
      type: json['type'] as String,
      isLocal: json['is_local'] as bool,
      trackNumber: json['track_number'] as int,
      previewUrl: json['preview_url'] as String?,
      popularity: json['popularity'] as int?,
      name: json['name'] as String,
      restrictions: json['restrictions'] == null
          ? null
          : Restrictions.fromJson(json['restrictions'] as Map<String, dynamic>),
      linkedFrom: json['linked_from'] == null
          ? null
          : Track.fromJson(json['linked_from'] as Map<String, dynamic>),
      isPlayable: json['is_playable'] as bool,
      id: json['id'] as String,
      hRef: json['hRef'] as String?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      explicit: json['explicit'] as bool,
      durationMs: json['duration_ms'] as int,
      discNumber: json['disc_number'] as int,
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'uri': instance.uri,
      'type': instance.type,
      'is_local': instance.isLocal,
      'track_number': instance.trackNumber,
      'preview_url': instance.previewUrl,
      'popularity': instance.popularity,
      'name': instance.name,
      'restrictions': instance.restrictions,
      'linked_from': instance.linkedFrom,
      'is_playable': instance.isPlayable,
      'id': instance.id,
      'hRef': instance.hRef,
      'external_urls': instance.externalUrls,
      'external_ids': instance.externalIds,
      'explicit': instance.explicit,
      'duration_ms': instance.durationMs,
      'disc_number': instance.discNumber,
      'available_markets': instance.availableMarkets,
      'artists': instance.artists,
      'album': instance.album,
    };
