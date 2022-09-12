import 'package:spotify_flutter/src/core/services/auth/auth_service.dart';

class SpotifyApi {
  SpotifyApi._privateConstructor();

  static final SpotifyApi _instance = SpotifyApi._privateConstructor();

  static SpotifyApi get instance => _instance;

  String clientId = '';
  String secretKey = '';

  final _authService = AuthService();


  // TODO: Document [authenticate].
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

  /// This method must be called to set up spotify library
  /// Call this method before you use any of the spotify methods
  Future initialize(
      {required String clientId, required String secretKey}) async {
    this.clientId = clientId;
    this.secretKey = secretKey;
  }
}
