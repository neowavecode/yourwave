// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Cargando tu experiencia de citas...';

  @override
  String get mainTitle => '¡Conoce gente nueva y encuentra tu pareja ideal!';

  @override
  String get googlePlayTitle => 'Descarga en Google Play';

  @override
  String get appleStoreTitle => 'Descarga en la App Store';

  @override
  String get scanInstructions =>
      '¡Escanea los códigos QR para descargar nuestra aplicación y empezar a conectar!';

  @override
  String get privacyPolicy => 'Política de Privacidad';

  @override
  String copyright(int year) {
    return '© $year YourWave. Todos los derechos reservados.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_es.html';
}
