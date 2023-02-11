// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResponseArtist _$$PaginatedResponseArtistFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedResponseArtist(
      hRef: json['hRef'] as String?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      cursors: json['cursors'] == null
          ? null
          : Cursors.fromJson(json['cursors'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginatedResponseArtistToJson(
        _$PaginatedResponseArtist instance) =>
    <String, dynamic>{
      'hRef': instance.hRef,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'total': instance.total,
      'cursors': instance.cursors,
      'items': instance.items,
      'runtimeType': instance.$type,
    };

_$PaginatedResponseAlbums _$$PaginatedResponseAlbumsFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedResponseAlbums(
      hRef: json['hRef'] as String?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursors: json['cursors'] == null
          ? null
          : Cursors.fromJson(json['cursors'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginatedResponseAlbumsToJson(
        _$PaginatedResponseAlbums instance) =>
    <String, dynamic>{
      'hRef': instance.hRef,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
      'cursors': instance.cursors,
      'runtimeType': instance.$type,
    };

_$PaginatedResponseTracks _$$PaginatedResponseTracksFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedResponseTracks(
      hRef: json['hRef'] as String?,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      cursors: json['cursors'] == null
          ? null
          : Cursors.fromJson(json['cursors'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Track.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaginatedResponseTracksToJson(
        _$PaginatedResponseTracks instance) =>
    <String, dynamic>{
      'hRef': instance.hRef,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'total': instance.total,
      'cursors': instance.cursors,
      'items': instance.items,
      'runtimeType': instance.$type,
    };
