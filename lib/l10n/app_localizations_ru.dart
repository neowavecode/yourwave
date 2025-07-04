// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'Загрузка вашего опыта знакомств...';

  @override
  String get mainTitle =>
      'Знакомьтесь с новыми людьми и найдите свою идеальную пару!';

  @override
  String get googlePlayTitle => 'Загрузить в Google Play';

  @override
  String get appleStoreTitle => 'Загрузить в App Store';

  @override
  String get scanInstructions =>
      'Отсканируйте QR-коды, чтобы загрузить наше приложение и начать общаться!';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String copyright(int year) {
    return '© $year YourWave. Все права защищены.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
