import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/models/available_genre/available_genre.dart';
import '../../constants/constants.dart';

class GenreService {
  final Dio _dio;

  GenreService(this._dio);

  Future<AvailableGenre> getAvailableGenreSeeds() async {
    final response = await _dio.get(Routes.getGenre);

    try {
      return AvailableGenre.fromJson(response.data);
    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }
  }
}
