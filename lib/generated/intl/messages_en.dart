// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_bar_title": MessageLookupByLibrary.simpleMessage("Kanban"),
        "auth_button_text": MessageLookupByLibrary.simpleMessage("Log in"),
        "auth_password_form":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "auth_username_form":
            MessageLookupByLibrary.simpleMessage("Enter your username"),
        "error_text":
            MessageLookupByLibrary.simpleMessage("Failed to load information"),
        "tab_bar_tabs_four": MessageLookupByLibrary.simpleMessage("Approved"),
        "tab_bar_tabs_one": MessageLookupByLibrary.simpleMessage("On hold"),
        "tab_bar_tabs_three":
            MessageLookupByLibrary.simpleMessage("Needs review"),
        "tab_bar_tabs_two": MessageLookupByLibrary.simpleMessage("In progress"),
        "text_card_id": MessageLookupByLibrary.simpleMessage("ID"),
        "validate_empty": MessageLookupByLibrary.simpleMessage("Empty field"),
        "validate_passwodr_length":
            MessageLookupByLibrary.simpleMessage("Minimum is 8 characters"),
        "validate_username_length":
            MessageLookupByLibrary.simpleMessage("Minimum is 4 characters")
      };
}
