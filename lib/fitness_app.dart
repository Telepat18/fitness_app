import 'package:fitness_app/views/app_bars/fitness_text_app_bar.dart';
import 'package:flutter/material.dart';

import 'l10n/generated/fitness_localizations.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FitnessTextAppBar(),
      localizationsDelegates: FitnessLocalizations.localizationsDelegates,
      supportedLocales: FitnessLocalizations.supportedLocales,
    );
  }
}
