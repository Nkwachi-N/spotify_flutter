// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badRequest": MessageLookupByLibrary.simpleMessage("Bad request"),
        "connectionRequestTimeout":
            MessageLookupByLibrary.simpleMessage("Connection request timeout"),
        "errorDueToConflict":
            MessageLookupByLibrary.simpleMessage("Error due to a conflict"),
        "genericError": MessageLookupByLibrary.simpleMessage(
            "The application has encountered an unknown error.\nWe are aware and will be looking into this with the utmost urgency"),
        "important": MessageLookupByLibrary.simpleMessage("Important"),
        "methodNotAllowed":
            MessageLookupByLibrary.simpleMessage("Method Allowed"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "notAcceptable": MessageLookupByLibrary.simpleMessage("Not acceptable"),
        "notImplemented":
            MessageLookupByLibrary.simpleMessage("Not Implemented"),
        "receivedInvalidStatusCode": MessageLookupByLibrary.simpleMessage(
            "Received invalid status code"),
        "requestCancelled":
            MessageLookupByLibrary.simpleMessage("Request Cancelled"),
        "serviceUnavailable":
            MessageLookupByLibrary.simpleMessage("Service unavailable"),
        "timeOutConnectionWithServer": MessageLookupByLibrary.simpleMessage(
            "Send timeout in connection with API server"),
        "unableToProcessData":
            MessageLookupByLibrary.simpleMessage("Unable to process the data"),
        "unexpectedErrorOccurred":
            MessageLookupByLibrary.simpleMessage("Unexpected error occurred")
      };
}
