
import 'package:spotify_flutter/src/core/services/services.dart';

class SpotifyApi {
  SpotifyApi._privateConstructor();

  static final SpotifyApi _instance = SpotifyApi._privateConstructor();

  static SpotifyApi get instance => _instance;

  final authService = AuthService();
  final userService = UserService();
  final genreService = GenreService();
  final artistService = ArtistService();
  final albumsService = AlbumServiceImpl();


}
