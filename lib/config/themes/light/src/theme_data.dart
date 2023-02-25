part of '../light_theme.dart';

ThemeData _createTheme() {
  const textTheme = TextTheme(
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
    labelLarge: _labelLarge,
  );

  final themeData = ThemeData(
    scaffoldBackgroundColor: _AppColors.primaryGrey,
  );

  return themeData;
}
