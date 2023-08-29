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