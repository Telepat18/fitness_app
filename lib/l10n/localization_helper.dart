import 'package:flutter/widgets.dart';

import 'generated/fitness_localizations.dart';
import 'generated/fitness_localizations_en.dart';

FitnessLocalizations getLocalizations(BuildContext context) {
  final localizations = FitnessLocalizations.of(context);
  if (localizations != null) return localizations;
  return FitnessLocalizationsEn();
}

FitnessLocalizations getLocaleLocalizations([Locale? locale]) {
  if (locale == null) return FitnessLocalizationsEn();

  final localeSupported =
      FitnessLocalizations.supportedLocales.contains(locale);

  if (!localeSupported) return FitnessLocalizationsEn();

  return lookupFitnessLocalizations(locale);
}
