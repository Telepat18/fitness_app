part of '../light_theme.dart';

class _LightColorThemeData implements MainColorThemeData {
  const _LightColorThemeData();

  /// Used in all pages

  @override
  Color get primaryBackground => _AppColors.primaryGrey;

  @override
  Color get secondaryBackground => _AppColors.secondaryGrey;

  @override
  Color get white => _AppColors.white;

  @override
  Color get black => _AppColors.black;

  /// Used for buttons

  @override
  Color get activeButton => _AppColors.palettes;

  @override
  Color get facebookButton => _AppColors.blue;
}
