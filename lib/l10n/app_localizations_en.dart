// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Loading your dating experience...';

  @override
  String get mainTitle => 'Meet new people and find your ideal match!';

  @override
  String get googlePlayTitle => 'Download on Google Play';

  @override
  String get appleStoreTitle => 'Download on the App Store';

  @override
  String get scanInstructions =>
      'Scan the QR codes to download our app and start connecting!';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String copyright(int year) {
    return '© $year YourWave. All rights reserved.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
