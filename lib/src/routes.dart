class Routes{

  Routes._();


  static const _authBaseUrl = 'https://accounts.spotify.com';

  static const _baseUrl = 'https://api.spotify.com/v1';

  static const autGetTokenUrl = '$_authBaseUrl/api/token';

  static const getUserInfo = '$_baseUrl/me';



  ///Valid values: artists or tracks
  static const _getUserTopItems = 'https://api.spotify.com/v1/me/top';

  static const getGenre = '$_baseUrl/recommendations/available-genre-seeds';


  static const getUserTopArtists = '$_getUserTopItems/artists';

  static const search ='$_baseUrl/search';
}