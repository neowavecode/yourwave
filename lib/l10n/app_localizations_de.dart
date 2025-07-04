// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Dein Dating-Erlebnis wird geladen...';

  @override
  String get mainTitle => 'Triff neue Leute und finde deinen idealen Partner!';

  @override
  String get googlePlayTitle => 'Im Google Play herunterladen';

  @override
  String get appleStoreTitle => 'Im App Store herunterladen';

  @override
  String get scanInstructions =>
      'Scanne die QR-Codes, um unsere App herunterzuladen und dich zu verbinden!';

  @override
  String get privacyPolicy => 'Datenschutz-Bestimmungen';

  @override
  String copyright(int year) {
    return '© $year YourWave. Alle Rechte vorbehalten.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
