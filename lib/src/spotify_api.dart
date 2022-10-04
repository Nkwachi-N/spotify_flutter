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

  final _authService = AuthService();
  final _userService = UserService();
  final _genreService = GenreService();
  final _artistService = ArtistService();
  final _albumsService = AlbumServiceImpl();
  final _searchService = SearchService();

  // TODO: Document [authenticate].
  Future<ApiResult<bool>> authenticate({
    required String redirectUri,
    required String clientId,
    String state = 'HappyBaby247',
    required String callbackUrlScheme,
    required String secretKey,
    String? scope,
  }) async {
    //TODO: Store user id
    ApiClient.instance.clientId = clientId;
    return await _authService.authorize(
      redirectUri: redirectUri,
      clientId: clientId,
      callbackUrlScheme: callbackUrlScheme,
      secretKey: secretKey,
      scope: scope,
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

  Future<ApiResult<bool>> saveAlbum(String ids) =>
      _albumsService.saveAlbum(ids);

  Future<ApiResult<bool>> removeAlbums(String ids) =>
      _albumsService.removeAlbums(ids);

  Future<ApiResult<List<bool>>> checkSavedAlbums(String ids) =>
      _albumsService.checkSavedAlbums(ids);

  Future<ApiResult<PaginatedResponseAlbums>> getNewReleases(
          {String? country, int? limit, int? offset}) =>
      _albumsService.getNewReleases(
        offset: offset,
        country: country,
        limit: limit,
      );

  Future<ApiResult<PaginatedResponseAlbums>> getSavedAlbums(
          {String? market, int? limit, int? offset}) =>
      _albumsService.getSavedAlbums(
        market: market,
        limit: limit,
        offset: offset,
      );

  Future<ApiResult<Album>> getAlbum({required String id, String? market}) =>
      _albumsService.getAlbum(
        id: id,
        market: market,
      );

  Future<ApiResult<List<Album>>> getSeveralAlbums(
          {required String ids, String? market}) =>
      _albumsService.getSeveralAlbums(
        ids: ids,
        market: market,
      );

  Future<ApiResult<PaginatedResponseTracks>> getAlbumTracks({
    required String id,
    String? market,
    int? limit,
    int? offset,
  }) =>
      _albumsService.getAlbumTracks(
        id: id,
        market: market,
        limit: limit,
        offset: offset,
      );

  Future<ApiResult<SearchResponse>> getTracksByGenre(
          {required String genre,
          int? limit,
          int? offset,
          String? market,
          String? includeExternal}) =>
      _searchService.getTracksByGenre(
        market: market,
        limit: limit,
        offset: offset,
        genre: genre,
        includeExternal: includeExternal,
      );

  Future<ApiResult<SearchResponse>> getTracksByArtist(
          {required String artist,
          int? limit,
          int? offset,
          String? market,
          String? includeExternal}) =>
      _searchService.getTracksByGenre(
        market: market,
        limit: limit,
        offset: offset,
        genre: artist,
        includeExternal: includeExternal,
      );

  Future<ApiResult<SearchResponse>> genericSearch(
          {required String query,
          required String type,
          int? limit,
          int? offset,
          String? market,
          String? includeExternal}) =>
      _searchService.genericSearch(
        market: market,
        limit: limit,
        offset: offset,
        query: query,
        type: type,
        includeExternal: includeExternal,
      );
}
