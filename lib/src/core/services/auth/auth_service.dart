import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:pkce/pkce.dart';
import 'package:spotify_flutter/src/core/constants/routes.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  KeyPair getKeyPair() {
    final pkcePair = PkcePair.generate();

    final codeChallenge = pkcePair.codeChallenge.replaceAll('=', '');
    final codeVerifier = pkcePair.codeVerifier;
    return KeyPair(
      codeChallenge: codeChallenge,
      codeVerifier: codeVerifier,
    );
  }

  Future<String?> authorize(
      {required String redirectUri,
      required String clientId,
      String state = 'HappyBaby247',
      required String callbackUrlScheme,
      required String secretKey,
      codeChallenge,
      required String? scope}) async {
    final url = Uri.https('accounts.spotify.com', '/authorize', {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'state': state,
      'code_challenge_method': 'S256',
      'code_challenge': codeChallenge,
      if (scope != null) 'scope': scope
    });

    final result = await FlutterWebAuth.authenticate(
      url: url.toString(),
      callbackUrlScheme: callbackUrlScheme,
    );

    final returnedState = Uri.parse(result).queryParameters['state'];

    if (state == returnedState) {
      final code = Uri.parse(result).queryParameters['code'];
      return code;
    }
  }

  Future<GetTokenResponse> getToken({
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

    final response = await _dio.post(
      Routes.autGetTokenUrl,
      options: Options(
        headers: header,
      ),
      data: data,
    );

    try {
      return GetTokenResponse.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }
}

class GetTokenResponse {
  String? accessToken;
  String? refreshToken;

  GetTokenResponse({this.accessToken, this.refreshToken});

  factory GetTokenResponse.fromJson(Map<String, dynamic> json) {
    return GetTokenResponse(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }
}

class AuthResponse {}

class KeyPair {
  String codeChallenge;
  String codeVerifier;

  KeyPair({
    required this.codeChallenge,
    required this.codeVerifier,
  });
}
