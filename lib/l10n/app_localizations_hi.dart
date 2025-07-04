// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'आपके डेटिंग अनुभव को लोड किया जा रहा है...';

  @override
  String get mainTitle => 'नए लोगों से मिलें और अपना आदर्श साथी खोजें!';

  @override
  String get googlePlayTitle => 'Google Play पर डाउनलोड करें';

  @override
  String get appleStoreTitle => 'App Store पर डाउनलोड करें';

  @override
  String get scanInstructions =>
      'हमारा ऐप डाउनलोड करने और कनेक्ट करना शुरू करने के लिए QR कोड स्कैन करें!';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String copyright(int year) {
    return '© $year YourWave. सर्वाधिकार सुरक्षित।';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
