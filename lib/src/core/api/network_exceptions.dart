import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/l10n.dart';

part 'network_exceptions.freezed.dart';

/// Depending on what is the agreed error coding with backend
@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest(String reason) =
  UnauthorisedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.exceededLimits()= ExceededLimits;

  const factory NetworkExceptions.internalServerError(String message) =
  InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              if (kDebugMode) {
                if (error.message.contains("Deserializing")) {
                  log(" ==================== Deserialization issues ================ \n ${error.stackTrace}");
                }
              }
              networkExceptions =
              const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              Map<String, dynamic>? data = error.response?.data;
              String reason = S.current.genericError;
              if (data?["error"]['message'] != null) {
                reason = data?['error']["message"];
              }

              switch (error.response!.statusCode) {
                case 401:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(reason);
                  break;
                case 429:
                  networkExceptions =
                      NetworkExceptions.exceededLimits();
                  break;
                case 403:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(reason);
                  break;
                case 500:
                  networkExceptions =
                      NetworkExceptions.internalServerError(reason);
                  break;
                case 503:
                  networkExceptions =
                  const NetworkExceptions.serviceUnavailable();
                  break;
                default:
                  networkExceptions = NetworkExceptions.defaultError(
                    reason,
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = S.current.notImplemented;
    }, requestCancelled: () {
      errorMessage = S.current.requestCancelled;
    }, internalServerError: (String message) {
      errorMessage = message;
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = S.current.serviceUnavailable;
    }, methodNotAllowed: () {
      errorMessage = S.current.methodNotAllowed;
    }, badRequest: () {
      errorMessage = S.current.badRequest;
    }, unauthorisedRequest: (String reason) {
      errorMessage = reason;
    }, unexpectedError: () {
      errorMessage = S.current.unexpectedErrorOccurred;
    }, requestTimeout: () {
      errorMessage = S.current.connectionRequestTimeout;
    }, noInternetConnection: () {
      errorMessage = S.current.noInternetConnection;
    },sendTimeout: () {
      errorMessage = S.current.timeOutConnectionWithServer;
    }, unableToProcess: () {
      errorMessage = S.current.unableToProcessData;
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = S.current.unexpectedErrorOccurred;
    }, notAcceptable: () {
      errorMessage = S.current.notAcceptable;
    }, exceededLimits: () {
      errorMessage = S.current.exceededLimits;
    });
    return errorMessage;
  }
}