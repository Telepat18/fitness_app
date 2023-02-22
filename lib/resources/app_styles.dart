import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static const textStyleFit = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontFamily: 'Poppins',
    fontSize: 32.0,
  );
  static const textStyleNess = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.palettes,
    fontFamily: 'Poppins',
    fontSize: 32,
  );
  static const textStyleWelcomeToFitness = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 24,
  );
  static const textStyleForgotPassword = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const textStyleLogin = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const textStyleOr = TextStyle(
    color: AppColors.grey,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const textStyleGoogle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const textStyleFb = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const skipText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
  );
  static const welcomeToFitnessApp = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
  static const stayHealthy = TextStyle(
    color: AppColors.grey,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
  );
  static const createAccountText = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );
}
