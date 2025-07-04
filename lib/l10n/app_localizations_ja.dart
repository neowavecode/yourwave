// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'デーティング体験を読み込んでいます...';

  @override
  String get mainTitle => '新しい人々と出会い、理想の相手を見つけましょう！';

  @override
  String get googlePlayTitle => 'Google Playでダウンロード';

  @override
  String get appleStoreTitle => 'App Storeでダウンロード';

  @override
  String get scanInstructions => 'QRコードをスキャンしてアプリをダウンロードし、つながりを始めましょう！';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String copyright(int year) {
    return '© $year YourWave. 全著作権所有。';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
