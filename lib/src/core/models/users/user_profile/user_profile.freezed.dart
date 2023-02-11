// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'explicit_content')
  ExplicitContent? get explicitContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String? country,
      @JsonKey(name: 'display_name') String? displayName,
      String? email,
      @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      String? uri,
      String? product,
      String? type,
      List<Image>? images});

  $ExplicitContentCopyWith<$Res>? get explicitContent;
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? explicitContent = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? uri = freezed,
    Object? product = freezed,
    Object? type = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      explicitContent: explicitContent == freezed
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as ExplicitContent?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }

  @override
  $ExplicitContentCopyWith<$Res>? get explicitContent {
    if (_value.explicitContent == null) {
      return null;
    }

    return $ExplicitContentCopyWith<$Res>(_value.explicitContent!, (value) {
      return _then(_value.copyWith(explicitContent: value));
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
  $FollowersCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $FollowersCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$_UserProfileCopyWith(
          _$_UserProfile value, $Res Function(_$_UserProfile) then) =
      __$$_UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? country,
      @JsonKey(name: 'display_name') String? displayName,
      String? email,
      @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      String? uri,
      String? product,
      String? type,
      List<Image>? images});

  @override
  $ExplicitContentCopyWith<$Res>? get explicitContent;
  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$_UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$$_UserProfileCopyWith<$Res> {
  __$$_UserProfileCopyWithImpl(
      _$_UserProfile _value, $Res Function(_$_UserProfile) _then)
      : super(_value, (v) => _then(v as _$_UserProfile));

  @override
  _$_UserProfile get _value => super._value as _$_UserProfile;

  @override
  $Res call({
    Object? country = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? explicitContent = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? uri = freezed,
    Object? product = freezed,
    Object? type = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_UserProfile(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      explicitContent: explicitContent == freezed
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as ExplicitContent?,
      externalUrls: externalUrls == freezed
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  const _$_UserProfile(
      {this.country,
      @JsonKey(name: 'display_name') this.displayName,
      this.email,
      @JsonKey(name: 'explicit_content') this.explicitContent,
      @JsonKey(name: 'external_urls') this.externalUrls,
      this.followers,
      this.href,
      this.id,
      this.uri,
      this.product,
      this.type,
      final List<Image>? images})
      : _images = images;

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? country;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  final String? email;
  @override
  @JsonKey(name: 'explicit_content')
  final ExplicitContent? explicitContent;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  @override
  final Followers? followers;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? uri;
  @override
  final String? product;
  @override
  final String? type;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfile(country: $country, displayName: $displayName, email: $email, explicitContent: $explicitContent, externalUrls: $externalUrls, followers: $followers, href: $href, id: $id, uri: $uri, product: $product, type: $type, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfile &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.explicitContent, explicitContent) &&
            const DeepCollectionEquality()
                .equals(other.externalUrls, externalUrls) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality().equals(other.href, href) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(explicitContent),
      const DeepCollectionEquality().hash(externalUrls),
      const DeepCollectionEquality().hash(followers),
      const DeepCollectionEquality().hash(href),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uri),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      __$$_UserProfileCopyWithImpl<_$_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {final String? country,
      @JsonKey(name: 'display_name') final String? displayName,
      final String? email,
      @JsonKey(name: 'explicit_content') final ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') final ExternalUrls? externalUrls,
      final Followers? followers,
      final String? href,
      final String? id,
      final String? uri,
      final String? product,
      final String? type,
      final List<Image>? images}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get country;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  String? get email;
  @override
  @JsonKey(name: 'explicit_content')
  ExplicitContent? get explicitContent;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls;
  @override
  Followers? get followers;
  @override
  String? get href;
  @override
  String? get id;
  @override
  String? get uri;
  @override
  String? get product;
  @override
  String? get type;
  @override
  List<Image>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
