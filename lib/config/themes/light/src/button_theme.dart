part of '../light_theme.dart';

class _LightButtonTheme implements MainButtonThemeData {
  const _LightButtonTheme();

  @override
  ButtonStyle get primary => ButtonStyle(
        textStyle: MaterialStatePropertyAll(_labelLarge),
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.maximumDensity,
        ),
        backgroundColor: MaterialStatePropertyAll(_AppColors.palettes),
        foregroundColor: MaterialStatePropertyAll(_AppColors.white),
        elevation: MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 40,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      );

  @override
  ButtonStyle get facebook => ButtonStyle(
        textStyle: MaterialStatePropertyAll(_labelLarge),
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.maximumDensity,
        ),
        backgroundColor: MaterialStatePropertyAll(_AppColors.blue),
        foregroundColor: MaterialStatePropertyAll(_AppColors.white),
        elevation: MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 40,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      );

  @override
  ButtonStyle get google => ButtonStyle(
        textStyle: MaterialStatePropertyAll(_labelLarge),
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.maximumDensity,
        ),
        backgroundColor: MaterialStatePropertyAll(_AppColors.white),
        foregroundColor: MaterialStatePropertyAll(_AppColors.white),
        elevation: MaterialStatePropertyAll(0),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 40,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      );
}
