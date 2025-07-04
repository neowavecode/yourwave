// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Carregando sua experiência de namoro...';

  @override
  String get mainTitle => 'Conheça novas pessoas e encontre seu par ideal!';

  @override
  String get googlePlayTitle => 'Baixar na Google Play';

  @override
  String get appleStoreTitle => 'Baixar na App Store';

  @override
  String get scanInstructions =>
      'Leia os códigos QR para baixar nosso aplicativo e começar a se conectar!';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String copyright(int year) {
    return '© $year YourWave. Todos os direitos reservados.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
