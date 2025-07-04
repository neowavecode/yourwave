// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Chargement de votre expérience de rencontre...';

  @override
  String get mainTitle =>
      'Rencontrez de nouvelles personnes et trouvez votre partenaire idéal !';

  @override
  String get googlePlayTitle => 'Télécharger sur Google Play';

  @override
  String get appleStoreTitle => 'Télécharger sur l\'App Store';

  @override
  String get scanInstructions =>
      'Scannez les codes QR pour télécharger notre application et commencer à vous connecter !';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String copyright(int year) {
    return '© $year YourWave. Tous droits réservés.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
