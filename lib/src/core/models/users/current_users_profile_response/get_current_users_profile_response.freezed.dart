// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_current_users_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCurrentUserProfileResponse _$GetCurrentUserProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCurrentUserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCurrentUserProfileResponse {
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'explicit_content')
  ExplicitContent? get explicitContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  Followers get followers => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<UserImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrentUserProfileResponseCopyWith<GetCurrentUserProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserProfileResponseCopyWith<$Res> {
  factory $GetCurrentUserProfileResponseCopyWith(
          GetCurrentUserProfileResponse value,
          $Res Function(GetCurrentUserProfileResponse) then) =
      _$GetCurrentUserProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {String? country,
      @JsonKey(name: 'display_name') String? displayName,
      String? email,
      @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      Followers followers,
      String href,
      String id,
      String uri,
      String product,
      String type,
      List<UserImage> images});

  $ExplicitContentCopyWith<$Res>? get explicitContent;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  $FollowersCopyWith<$Res> get followers;
}

/// @nodoc
class _$GetCurrentUserProfileResponseCopyWithImpl<$Res>
    implements $GetCurrentUserProfileResponseCopyWith<$Res> {
  _$GetCurrentUserProfileResponseCopyWithImpl(this._value, this._then);

  final GetCurrentUserProfileResponse _value;
  // ignore: unused_field
  final $Res Function(GetCurrentUserProfileResponse) _then;

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
              as ExternalUrls,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
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
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value));
    });
  }

  @override
  $FollowersCopyWith<$Res> get followers {
    return $FollowersCopyWith<$Res>(_value.followers, (value) {
      return _then(_value.copyWith(followers: value));
    });
  }
}

/// @nodoc
abstract class _$$_GetCurrentUserProfileResponseCopyWith<$Res>
    implements $GetCurrentUserProfileResponseCopyWith<$Res> {
  factory _$$_GetCurrentUserProfileResponseCopyWith(
          _$_GetCurrentUserProfileResponse value,
          $Res Function(_$_GetCurrentUserProfileResponse) then) =
      __$$_GetCurrentUserProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? country,
      @JsonKey(name: 'display_name') String? displayName,
      String? email,
      @JsonKey(name: 'explicit_content') ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') ExternalUrls externalUrls,
      Followers followers,
      String href,
      String id,
      String uri,
      String product,
      String type,
      List<UserImage> images});

  @override
  $ExplicitContentCopyWith<$Res>? get explicitContent;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  @override
  $FollowersCopyWith<$Res> get followers;
}

/// @nodoc
class __$$_GetCurrentUserProfileResponseCopyWithImpl<$Res>
    extends _$GetCurrentUserProfileResponseCopyWithImpl<$Res>
    implements _$$_GetCurrentUserProfileResponseCopyWith<$Res> {
  __$$_GetCurrentUserProfileResponseCopyWithImpl(
      _$_GetCurrentUserProfileResponse _value,
      $Res Function(_$_GetCurrentUserProfileResponse) _then)
      : super(_value, (v) => _then(v as _$_GetCurrentUserProfileResponse));

  @override
  _$_GetCurrentUserProfileResponse get _value =>
      super._value as _$_GetCurrentUserProfileResponse;

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
    return _then(_$_GetCurrentUserProfileResponse(
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
              as ExternalUrls,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers,
      href: href == freezed
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UserImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCurrentUserProfileResponse
    implements _GetCurrentUserProfileResponse {
  const _$_GetCurrentUserProfileResponse(
      {this.country,
      @JsonKey(name: 'display_name') this.displayName,
      this.email,
      @JsonKey(name: 'explicit_content') this.explicitContent,
      @JsonKey(name: 'external_urls') required this.externalUrls,
      required this.followers,
      required this.href,
      required this.id,
      required this.uri,
      required this.product,
      required this.type,
      required final List<UserImage> images})
      : _images = images;

  factory _$_GetCurrentUserProfileResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetCurrentUserProfileResponseFromJson(json);

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
  final ExternalUrls externalUrls;
  @override
  final Followers followers;
  @override
  final String href;
  @override
  final String id;
  @override
  final String uri;
  @override
  final String product;
  @override
  final String type;
  final List<UserImage> _images;
  @override
  List<UserImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'GetCurrentUserProfileResponse(country: $country, displayName: $displayName, email: $email, explicitContent: $explicitContent, externalUrls: $externalUrls, followers: $followers, href: $href, id: $id, uri: $uri, product: $product, type: $type, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentUserProfileResponse &&
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
  _$$_GetCurrentUserProfileResponseCopyWith<_$_GetCurrentUserProfileResponse>
      get copyWith => __$$_GetCurrentUserProfileResponseCopyWithImpl<
          _$_GetCurrentUserProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCurrentUserProfileResponseToJson(
      this,
    );
  }
}

abstract class _GetCurrentUserProfileResponse
    implements GetCurrentUserProfileResponse {
  const factory _GetCurrentUserProfileResponse(
      {final String? country,
      @JsonKey(name: 'display_name') final String? displayName,
      final String? email,
      @JsonKey(name: 'explicit_content') final ExplicitContent? explicitContent,
      @JsonKey(name: 'external_urls') required final ExternalUrls externalUrls,
      required final Followers followers,
      required final String href,
      required final String id,
      required final String uri,
      required final String product,
      required final String type,
      required final List<UserImage>
          images}) = _$_GetCurrentUserProfileResponse;

  factory _GetCurrentUserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCurrentUserProfileResponse.fromJson;

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
  ExternalUrls get externalUrls;
  @override
  Followers get followers;
  @override
  String get href;
  @override
  String get id;
  @override
  String get uri;
  @override
  String get product;
  @override
  String get type;
  @override
  List<UserImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrentUserProfileResponseCopyWith<_$_GetCurrentUserProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}
