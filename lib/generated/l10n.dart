// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The application has encountered an unknown error.\nWe are aware and will be looking into this with the utmost urgency`
  String get genericError {
    return Intl.message(
      'The application has encountered an unknown error.\nWe are aware and will be looking into this with the utmost urgency',
      name: 'genericError',
      desc: '',
      args: [],
    );
  }

  /// `Not Implemented`
  String get notImplemented {
    return Intl.message(
      'Not Implemented',
      name: 'notImplemented',
      desc: '',
      args: [],
    );
  }

  /// `Important`
  String get important {
    return Intl.message(
      'Important',
      name: 'important',
      desc: '',
      args: [],
    );
  }

  /// `Request Cancelled`
  String get requestCancelled {
    return Intl.message(
      'Request Cancelled',
      name: 'requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Service unavailable`
  String get serviceUnavailable {
    return Intl.message(
      'Service unavailable',
      name: 'serviceUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Method Allowed`
  String get methodNotAllowed {
    return Intl.message(
      'Method Allowed',
      name: 'methodNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Bad request`
  String get badRequest {
    return Intl.message(
      'Bad request',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error occurred`
  String get unexpectedErrorOccurred {
    return Intl.message(
      'Unexpected error occurred',
      name: 'unexpectedErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Connection request timeout`
  String get connectionRequestTimeout {
    return Intl.message(
      'Connection request timeout',
      name: 'connectionRequestTimeout',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Error due to a conflict`
  String get errorDueToConflict {
    return Intl.message(
      'Error due to a conflict',
      name: 'errorDueToConflict',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout in connection with API server`
  String get timeOutConnectionWithServer {
    return Intl.message(
      'Send timeout in connection with API server',
      name: 'timeOutConnectionWithServer',
      desc: '',
      args: [],
    );
  }

  /// `Unable to process the data`
  String get unableToProcessData {
    return Intl.message(
      'Unable to process the data',
      name: 'unableToProcessData',
      desc: '',
      args: [],
    );
  }

  /// `Not acceptable`
  String get notAcceptable {
    return Intl.message(
      'Not acceptable',
      name: 'notAcceptable',
      desc: '',
      args: [],
    );
  }

  /// `Received invalid status code`
  String get receivedInvalidStatusCode {
    return Intl.message(
      'Received invalid status code',
      name: 'receivedInvalidStatusCode',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
