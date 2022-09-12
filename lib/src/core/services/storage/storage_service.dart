import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  ///Shared Preference Keys
  final kAccessToken = 'access_token';

  final kRefreshToken = 'refresh_token';

  void saveToken({
    required String accessToken,
    required String refreshToken,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    prefs
      ..setString(kAccessToken, accessToken)
      ..setString(
        kRefreshToken,
        refreshToken,
      );
  }


  Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(kAccessToken);
  }

  Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(kRefreshToken);
  }
}
