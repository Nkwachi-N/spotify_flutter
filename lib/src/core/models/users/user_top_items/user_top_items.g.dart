// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_top_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTopItemsArtist _$$UserTopItemsArtistFromJson(Map<String, dynamic> json) =>
    _$UserTopItemsArtist(
      hRef: json['hRef'] as String?,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
      previous: json['previous'] as String?,
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserTopItemsArtistToJson(
        _$UserTopItemsArtist instance) =>
    <String, dynamic>{
      'hRef': instance.hRef,
      'limit': instance.limit,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };
