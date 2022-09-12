import 'package:spotify_flutter/src/core/services/auth_service.dart';

class SpotifyApi {

  SpotifyApi._privateConstructor();

  static final SpotifyApi _instance = SpotifyApi._privateConstructor();

  static SpotifyApi get instance => _instance;


  final _authService = AuthService();

  Future<bool> authenticate({
    required String redirectUri,
    required String clientId,
    String state = 'HappyBaby247',
    required String callbackUrlScheme,
    required String secretKey,
  }) =>
      _authService.authorize(
        redirectUri: redirectUri,
        clientId: clientId,
        callbackUrlScheme: callbackUrlScheme,
        secretKey: secretKey,
      );
}
