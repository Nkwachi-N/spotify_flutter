import 'package:dio/dio.dart';
import 'package:spotify_flutter/src/core/constants/constants.dart';

class SearchService {
  final Dio _dio;

  SearchService(this._dio);

  Future<Response> genericSearch({
    required String query,
    required List<String> types,
    String? market,
    int? limit,
    int? offset,
    String? includeExternal,
  }) async {
    final response = await _dio.get(Routes.search, queryParameters: {
      'q': query,
      'type': types,
      if (market != null) 'market': market,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
      if (includeExternal != null) 'include_external': includeExternal,
    });
    return response;
  }
}
