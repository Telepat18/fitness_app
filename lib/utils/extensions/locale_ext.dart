import 'package:flutter/material.dart';

import '../enum_utils.dart';
import 'build_context_ext.dart';

enum FitnessLocale {
  en;

  static FitnessLocale fromJson(String? json) {
    return enumFromString<FitnessLocale>(
      json,
      FitnessLocale.values,
      FitnessLocale.en,
    );
  }

  String getLabel(BuildContext context) {
    switch (this) {
      case FitnessLocale.en:
        return context.strings.localeNameEnglish;
    }
  }
}

extension LocaleExt on Locale {
  FitnessLocale toFitnessLocale() => FitnessLocale.fromJson(languageCode);

  String getLabel(BuildContext context) => toFitnessLocale().getLabel(context);
}
