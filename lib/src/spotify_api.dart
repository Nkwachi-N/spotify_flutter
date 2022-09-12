import 'package:spotify_flutter/src/auth_service.dart';

class SpotifyApi {
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
