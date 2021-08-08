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

  /// `Kanban`
  String get app_bar_title {
    return Intl.message(
      'Kanban',
      name: 'app_bar_title',
      desc: '',
      args: [],
    );
  }

  /// `On hold`
  String get tab_bar_tabs_one {
    return Intl.message(
      'On hold',
      name: 'tab_bar_tabs_one',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get tab_bar_tabs_two {
    return Intl.message(
      'In progress',
      name: 'tab_bar_tabs_two',
      desc: '',
      args: [],
    );
  }

  /// `Needs review`
  String get tab_bar_tabs_three {
    return Intl.message(
      'Needs review',
      name: 'tab_bar_tabs_three',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get tab_bar_tabs_four {
    return Intl.message(
      'Approved',
      name: 'tab_bar_tabs_four',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get auth_button_text {
    return Intl.message(
      'Log in',
      name: 'auth_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get auth_username_form {
    return Intl.message(
      'Enter your username',
      name: 'auth_username_form',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get auth_password_form {
    return Intl.message(
      'Enter your password',
      name: 'auth_password_form',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get text_card_id {
    return Intl.message(
      'ID',
      name: 'text_card_id',
      desc: '',
      args: [],
    );
  }

  /// `Minimum is 8 characters`
  String get validate_passwodr_length {
    return Intl.message(
      'Minimum is 8 characters',
      name: 'validate_passwodr_length',
      desc: '',
      args: [],
    );
  }

  /// `Minimum is 4 characters`
  String get validate_username_length {
    return Intl.message(
      'Minimum is 4 characters',
      name: 'validate_username_length',
      desc: '',
      args: [],
    );
  }

  /// `Empty field`
  String get validate_empty {
    return Intl.message(
      'Empty field',
      name: 'validate_empty',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load information`
  String get error_text {
    return Intl.message(
      'Failed to load information',
      name: 'error_text',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
