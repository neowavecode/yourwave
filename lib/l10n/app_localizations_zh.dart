// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => '正在加载您的约会体验...';

  @override
  String get mainTitle => '认识新朋友，找到理想的伴侣！';

  @override
  String get googlePlayTitle => '在 Google Play 上下载';

  @override
  String get appleStoreTitle => '在 App Store 上下载';

  @override
  String get scanInstructions => '扫描二维码下载我们的应用，开始连接吧！';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String copyright(int year) {
    return '© $year YourWave. 版权所有。';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
