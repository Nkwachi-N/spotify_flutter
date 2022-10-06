import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  ///Shared Preference Keys
  final kAccessToken = 'access_token';

  final kRefreshToken = 'refresh_token';

  final kClientId = 'client_id';

  final _storage = const FlutterSecureStorage();

  void saveToken({
    required String accessToken,
    required String refreshToken,
  }) {
    _storage.write(key: kAccessToken, value: accessToken);
    _storage.write(key: kRefreshToken, value: refreshToken);
  }

  void saveClientId(String clientID) {
    _storage.write(key: kClientId, value: clientID);
  }


  Future<String?> getAccessToken() async => _storage.read(key: kAccessToken);

  Future<String?> getRefreshToken() async => _storage.read(key: kRefreshToken);

  Future<String?> getClientId() async => _storage.read(key: kClientId);


}
