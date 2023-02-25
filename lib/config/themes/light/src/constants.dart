part of '../light_theme.dart';

const _headlineLarge = _TextStyle(
  32,
  FontWeight.w700,
  _AppColors.black,
);

const _headlineMedium = _TextStyle(
  24,
  FontWeight.w600,
  _AppColors.black,
);

const _headlineSmall = _TextStyle(
  12,
  FontWeight.w600,
  _AppColors.black,
);

const _labelLarge = _TextStyle(
  22,
  FontWeight.w600,
  _AppColors.white,
  letterSpacing: 0.045,
  height: 1.5,
);

class _TextStyle extends TextStyle {
  const _TextStyle(
    double size,
    FontWeight weight,
    Color color, {
    double? letterSpacing,
    double? height,
  }) : super(
          fontSize: size,
          fontWeight: weight,
          color: color,
          letterSpacing: letterSpacing,
          height: height,
        );
}

abstract class _AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF1D1C1C);
  static const primaryGrey = Color(0xffFAF9F9);
  static const secondaryGrey = Color(0xff555B6E);
  static const palettes = Color(0xff89b0ae);
  static const blue = Color(0xff5584C9);
}
