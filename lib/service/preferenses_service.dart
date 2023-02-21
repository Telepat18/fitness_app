import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../l10n/generated/fitness_localizations.dart';

class PreferencesService {
  static const _preferencesBox = '_preferencesBox';

  static const _localeKey = '_localeKey';

  final Box<dynamic> _box;

  PreferencesService._(this._box);

  static Future<PreferencesService> getInstance() async {
    final box = await Hive.openBox<dynamic>(_preferencesBox);
    return PreferencesService._(box);
  }

  Future<FitnessLocalizations> getLocalizations() async {
    return await FitnessLocalizations.delegate.load(
      getLocale(),
    );
  }

  String getDefaultLanguageCode() {
    if (FitnessLocalizations.supportedLocales
        .contains(Locale(Platform.localeName))) {
      return Platform.localeName;
    }
    return FitnessLocalizations.supportedLocales.first.languageCode;
  }

  Locale getLocale() {
    final languageCode = _box.get(_localeKey) ?? getDefaultLanguageCode();
    return Locale(languageCode);
  }

  Future<void> setLocale(Locale locale) async {
    await _box.put(_localeKey, locale.languageCode);
  }
}
