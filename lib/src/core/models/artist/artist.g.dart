// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      href: json['href'] as String?,
      id: json['id'] as String,
      name: json['name'] as String,
      popularity: json['popularity'] as int?,
      uri: json['uri'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'followers': instance.followers,
      'external_urls': instance.externalUrls,
      'genres': instance.genres,
      'images': instance.images,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'uri': instance.uri,
      'type': instance.type,
    };
