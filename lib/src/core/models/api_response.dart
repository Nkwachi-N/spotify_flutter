// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'api_response.freezed.dart';
// part 'api_response.g.dart';
//
//
// @Freezed(genericArgumentFactories: true)
// class ApiResponse<T> with _$ApiResponse {
//   const factory ApiResponse<T>.data(T data) = ApiResponseData;
//   const factory ApiResponse<T>.error(String message) = ApiResponseError;
//
//   factory ApiResponse<T>.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);
// }