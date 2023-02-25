import 'package:fitness_app/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

import 'config/l10n//fitness_localizations.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      localizationsDelegates: FitnessLocalizations.localizationsDelegates,
      supportedLocales: FitnessLocalizations.supportedLocales,
      locale: FitnessLocalizations.supportedLocales.first,
    );
  }
}
