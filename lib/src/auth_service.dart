import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:pkce/pkce.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_flutter/src/pref_constants.dart';
import 'package:spotify_flutter/src/routes.dart';

class AuthService {
  final _dio = Dio();

  Future<bool> authorize({
    required String redirectUri,
    required String clientId,
    String state = 'HappyBaby247',
    required String callbackUrlScheme,
    required String secretKey,
  }) async {
    final pkcePair = PkcePair.generate();

    const scope =
        'user-read-private user-read-email user-modify-playback-state streaming user-top-read';

    final codeChallenge = pkcePair.codeChallenge.replaceAll('=', '');
    final codeVerifier = pkcePair.codeVerifier;

    final url = Uri.https('accounts.spotify.com', '/authorize', {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'state': state,
      'code_challenge_method': 'S256',
      'code_challenge': codeChallenge,
      'scope': scope
    });

    try {
      final result = await FlutterWebAuth.authenticate(
        url: url.toString(),
        callbackUrlScheme: callbackUrlScheme,
      );

      final returnedState = Uri.parse(result).queryParameters['state'];

      if (state == returnedState) {
        final code = Uri.parse(result).queryParameters['code'];

        if (code != null) {
          return await _getToken(
            code: code,
            codeVerifier: codeVerifier,
            redirectUri: redirectUri,
            clientId: clientId, secretKey: secretKey,
          );
        }
      }
    } on Exception {
      return false;
    }

    return false;
  }

  Future<bool> _getToken({
    required String code,
    required String codeVerifier,
    required String redirectUri,
    required String clientId,
    required String secretKey,
  }) async {
    final data = {
      'grant_type': 'authorization_code',
      'code': code,
      'redirect_uri': redirectUri,
      'client_id': clientId,
      'code_verifier': codeVerifier
    };

    Codec<String, String> stringToBase64 = utf8.fuse(base64);

    final encodedString = stringToBase64.encode('$clientId:$secretKey');
    final header = {
      'Authorization': 'Basic $encodedString',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    try {
      final response = await _dio.post(
        Routes.autGetTokenUrl,
        data: data,
        options: Options(headers: header),
      );

      _saveToken(response.data);
      return true;
    } catch (_) {
      return false;
    }
  }

  _saveToken(Map<String, dynamic> response) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(PrefConstants.kAccessToken, response['access_token']);
    prefs.setString(PrefConstants.kRefreshToken, response['refresh_token']);
  }
}
