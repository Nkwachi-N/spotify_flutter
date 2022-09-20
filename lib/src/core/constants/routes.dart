class Routes {
  Routes._();

  static const _authBaseUrl = 'https://accounts.spotify.com';

  static const _baseUrl = 'https://api.spotify.com/v1';

  static const autGetTokenUrl = '$_authBaseUrl/api/token';

  static const getUserInfo = '$_baseUrl/me';

  static String getArtist(String id) => '$_baseUrl/artists/$id';

  static const getSeveralArtists = '$_baseUrl/artists';

  static String getArtistsAlbums(String id) => '$_baseUrl/artists/$id/albums';

  ///Valid values: artists or track
  static const _getUserTopItems = 'https://api.spotify.com/v1/me/top';

  static const getGenre = '$_baseUrl/recommendations/available-genre-seeds';

  static const getUserTopArtists = '$_getUserTopItems/artists';

  static const search = '$_baseUrl/search';

  static String getArtistRelatedArtists (String id) => '$_baseUrl/artists/$id/related-artists';

  static String getArtistTopTracks (String id) => '$_baseUrl/artists/$id/top-tracks';
}
