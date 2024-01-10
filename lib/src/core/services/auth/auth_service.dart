import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:pkce/pkce.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
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
    return null;
  }

  Future<GetTokenResponse> getToken({
    required String code,
    required String codeVerifier,
    required String redirectUri,
    required String clientId,
    Map<String, dynamic>? header,
  }) async {
    final data = {
      'grant_type': 'authorization_code',
      'code': code,
      'redirect_uri': redirectUri,
      'client_id': clientId,
      'code_verifier': codeVerifier
    };

    final Map<String, dynamic> defaultHeader = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    if (header != null) {
      defaultHeader.addAll(header);
    }

    final response = await _dio.post(
      Routes.autGetTokenUrl,
      options: Options(
        headers: defaultHeader,
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

class KeyPair {
  String codeChallenge;
  String codeVerifier;

  KeyPair({
    required this.codeChallenge,
    required this.codeVerifier,
  });
}
