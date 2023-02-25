import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'fitness_localizations_en.dart';

/// Callers can lookup localized strings with an instance of FitnessLocalizations
/// returned by `FitnessLocalizations.of(context)`.
///
/// Applications need to include `FitnessLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/fitness_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FitnessLocalizations.localizationsDelegates,
///   supportedLocales: FitnessLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the FitnessLocalizations.supportedLocales
/// property.
abstract class FitnessLocalizations {
  FitnessLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FitnessLocalizations of(BuildContext context) {
    return Localizations.of<FitnessLocalizations>(context, FitnessLocalizations)!;
  }

  static const LocalizationsDelegate<FitnessLocalizations> delegate = _FitnessLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @fit.
  ///
  /// In en, this message translates to:
  /// **'Fit'**
  String get fit;

  /// No description provided for @ness.
  ///
  /// In en, this message translates to:
  /// **'Ness'**
  String get ness;

  /// No description provided for @welcomeToFitness.
  ///
  /// In en, this message translates to:
  /// **'Welcome to fitness'**
  String get welcomeToFitness;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgottenYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgotten your Password?'**
  String get forgottenYourPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @continueWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'Continue with Facebook'**
  String get continueWithFacebook;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @welcomeToFitnessApp.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our fitness app'**
  String get welcomeToFitnessApp;

  /// No description provided for @stayHealthyWorkoutTogether.
  ///
  /// In en, this message translates to:
  /// **'stay healthy, workout together'**
  String get stayHealthyWorkoutTogether;

  /// No description provided for @createAcount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAcount;

  /// No description provided for @whatsYourGender.
  ///
  /// In en, this message translates to:
  /// **'Whats Your Gender?'**
  String get whatsYourGender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @whatsYourGoal.
  ///
  /// In en, this message translates to:
  /// **'Whats Your Goal?'**
  String get whatsYourGoal;

  /// No description provided for @buildMuscle.
  ///
  /// In en, this message translates to:
  /// **'Build Muscle'**
  String get buildMuscle;

  /// No description provided for @power.
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get power;

  /// No description provided for @localeNameEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get localeNameEnglish;

  /// No description provided for @weightLoss.
  ///
  /// In en, this message translates to:
  /// **'Weight Loss'**
  String get weightLoss;
}

class _FitnessLocalizationsDelegate extends LocalizationsDelegate<FitnessLocalizations> {
  const _FitnessLocalizationsDelegate();

  @override
  Future<FitnessLocalizations> load(Locale locale) {
    return SynchronousFuture<FitnessLocalizations>(lookupFitnessLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_FitnessLocalizationsDelegate old) => false;
}

FitnessLocalizations lookupFitnessLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FitnessLocalizationsEn();
  }

  throw FlutterError(
    'FitnessLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
