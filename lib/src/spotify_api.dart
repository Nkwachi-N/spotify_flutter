import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/models/users/user_top_items/user_top_items.dart';
import 'package:spotify_flutter/src/core/models/users/users.dart';
import 'package:spotify_flutter/src/core/services/auth/auth_service.dart';
import 'package:spotify_flutter/src/core/services/user/user_service.dart';

class SpotifyApi {
  SpotifyApi._privateConstructor();

  static final SpotifyApi _instance = SpotifyApi._privateConstructor();

  static SpotifyApi get instance => _instance;

  String _secretKey = '';

  final _authService = AuthService();
  final _userService = UserService();


  // TODO: Document [authenticate].
  Future<ApiResult<bool>> authenticate({
    required String redirectUri,
    required String clientId,
    String state = 'HappyBaby247',
    required String callbackUrlScheme,
    required String secretKey,
  }) async {
    ApiClient.instance.clientId = clientId;
    _secretKey = secretKey;
    return await _authService.authorize(
      redirectUri: redirectUri,
      clientId: clientId,
      callbackUrlScheme: callbackUrlScheme,
      secretKey: secretKey,
    );
  }


  //TODO:Document [getCurrentUsersProfile]
  Future<ApiResult<GetCurrentUserProfileResponse>> getCurrentUsersProfile() async {
    return await _userService.getCurrentUsersProfile(
    );
  }

  //TODO:Document [getUserTopArtists]
  Future<ApiResult<UserTopItemsArtist>> getUserTopArtists() async {
    return await _userService.getUserTopArtists();
  }




}
