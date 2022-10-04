// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      hRef: json['hRef'] as String?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      tracks: json['tracks'] == null
          ? null
          : PaginatedResponseTracks.fromJson(
              json['tracks'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : PaginatedResponseAlbums.fromJson(
              json['albums'] as Map<String, dynamic>),
      artists: json['artists'] == null
          ? null
          : PaginatedResponseArtist.fromJson(
              json['artists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'hRef': instance.hRef,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'total': instance.total,
      'tracks': instance.tracks,
      'albums': instance.albums,
      'artists': instance.artists,
    };
