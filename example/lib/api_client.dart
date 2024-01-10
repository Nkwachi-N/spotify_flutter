import 'package:example/storage/storage_service.dart';
import 'package:spotify_flutter/spotify_flutter.dart';

SpotifyApi get spotifyApiGateway => SpotifyApi(interceptors: [
      MyAuthInterceptor(),
    ]);

class MyAuthInterceptor extends AuthorizationTokenInjector {
  @override
  Future<String?> getToken() async {
    final token = await StorageService().getAccessToken();
    return token;
  }
}
