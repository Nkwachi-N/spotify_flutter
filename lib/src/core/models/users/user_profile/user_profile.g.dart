// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      country: json['country'] as String?,
      displayName: json['display_name'] as String?,
      email: json['email'] as String?,
      explicitContent: json['explicit_content'] == null
          ? null
          : ExplicitContent.fromJson(
              json['explicit_content'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      uri: json['uri'] as String?,
      product: json['product'] as String?,
      type: json['type'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'country': instance.country,
      'display_name': instance.displayName,
      'email': instance.email,
      'explicit_content': instance.explicitContent,
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'uri': instance.uri,
      'product': instance.product,
      'type': instance.type,
      'images': instance.images,
    };
