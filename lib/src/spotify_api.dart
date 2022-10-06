import 'package:spotify_flutter/spotify_flutter.dart';
import 'package:spotify_flutter/src/core/api/api_client.dart';
import 'package:spotify_flutter/src/core/api/api_result.dart';
import 'package:spotify_flutter/src/core/models/models.dart';
import 'package:spotify_flutter/src/core/models/paginated_response/paginated_response.dart';
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
