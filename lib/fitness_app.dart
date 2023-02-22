import 'package:fitness_app/ui/pages/questionnaire_pages/gender_page.dart';
import 'package:flutter/material.dart';

import 'l10n/generated/fitness_localizations.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GenderPage(),
      localizationsDelegates: FitnessLocalizations.localizationsDelegates,
      supportedLocales: FitnessLocalizations.supportedLocales,
    );
  }
}
