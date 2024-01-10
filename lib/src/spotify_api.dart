import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/services/search/search_service.dart';
import 'package:spotify_flutter/src/core/services/services.dart';

class SpotifyApi {
  final Dio _dio;

  SpotifyApi({
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : _dio = Dio(
            BaseOptions(connectTimeout: 5000, receiveTimeout: 3000, headers: {
          'requiresToken': true,
        })) {
    if (interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }
  }

  AlbumServiceImpl get albumClient {
    return AlbumServiceImpl(_dio);
  }

  ArtistService get artistClient {
    return ArtistService(_dio);
  }

  AuthService get authClient {
    return AuthService(_dio);
  }

  GenreService get genreClient {
    return GenreService(_dio);
  }

  UserService get userClient {
    return UserService(_dio);
  }

  SearchService get searchClient {
    return SearchService(_dio);
  }
}
