import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  ///Shared Preference Keys
  final kAccessToken = 'access_token';

  final kRefreshToken = 'refresh_token';

  final _storage = const FlutterSecureStorage();

  void saveToken({
    required String accessToken,
    required String refreshToken,
  }) {
    _storage
      ..write(key: kAccessToken, value: accessToken)
      ..write(
        key: kRefreshToken,
        value: refreshToken,
      );
  }


  Future<String?> getAccessToken() async => _storage.read(key: kAccessToken);

  Future<String?> getRefreshToken() async => _storage.read(key: kRefreshToken);
}
