import 'package:flutter/material.dart';

import '../../../config/themes/main_theme.dart';
import '../../config/l10n/fitness_localizations.dart';

extension BuildContextExt on BuildContext {
  FitnessLocalizations get strings => FitnessLocalizations.of(this);

  ThemeData get theme => Theme.of(this);
  MainTextThemeData get text => MainTheme.text(this);
  MainColorThemeData get color => MainTheme.color(this);
  MainButtonThemeData get button => MainTheme.button(this);

  double get safeBottomPadding => MediaQuery.of(this).padding.bottom;
  double get safeTopPadding => MediaQuery.of(this).padding.top;
  double get viewInsetsBottomPadding => MediaQuery.of(this).viewInsets.bottom;
}
