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

  String _secretKey = '';

  final _authService = AuthService();
  final _userService = UserService();
  final _genreService = GenreService();
  final _artistService = ArtistService();

  // TODO: Document [authenticate].
  Future<ApiResult<bool>> authenticate({
    required String redirectUri,
    required String clientId,
    String state = 'HappyBaby247',
    required String callbackUrlScheme,
    required String secretKey,
  }) async {
    ApiClient.instance.clientId = clientId;
    _secretKey = secretKey;
    return await _authService.authorize(
      redirectUri: redirectUri,
      clientId: clientId,
      callbackUrlScheme: callbackUrlScheme,
      secretKey: secretKey,
    );
  }

  //TODO:Document [getCurrentUsersProfile]
  Future<ApiResult<GetCurrentUserProfileResponse>> getCurrentUsersProfile() =>
      _userService.getCurrentUsersProfile();

  //TODO:Document [getUserTopArtists]
  Future<ApiResult<PaginatedResponseArtist>> getUserTopArtists() =>
      _userService.getUserTopArtists();

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<AvailableGenre>> getAvailableGenreSeeds() =>
      _genreService.getAvailableGenreSeeds();

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<Artist>> getArtist(String id) =>
      _artistService.getArtist(id);

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<List<Artist>>> getSeveralArtists(String ids) =>
      _artistService.getSeveralArtists(ids);

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<PaginatedResponseAlbums>> getArtistAlbums({
    required String id,
    String? includeGroups,
    int? limits,
    String? market,
    int? offset,
  }) =>
      _artistService.getArtistAlbums(
        id: id,
        includeGroups: includeGroups,
        limits: limits,
        market: market,
        offset: offset,
      );

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<List<Track>>> getArtistTopTracks({
    required String id,
    required String market,
  }) =>
      _artistService.getArtistTopTracks(
        id: id,
        market: market,
      );

  //TODO:Document [getAvailableGenreSeeds]
  Future<ApiResult<List<Artist>>> getArtistRelatedArtists(String id) =>
      _artistService.getArtistsRelatedArtists(id);
}
