// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'YourWave';

  @override
  String get loadingMessage => 'جاري تحميل تجربة المواعدة الخاصة بك...';

  @override
  String get mainTitle => 'تعرف على أشخاص جدد وابحث عن شريكك المثالي!';

  @override
  String get googlePlayTitle => 'تنزيل من Google Play';

  @override
  String get appleStoreTitle => 'تنزيل من App Store';

  @override
  String get scanInstructions => 'امسح رموز QR لتنزيل تطبيقنا وبدء التواصل!';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String copyright(int year) {
    return '© $year YourWave. كل الحقوق محفوظة.';
  }

  @override
  String get privacyPolicyUrl => 'assets/politica_de_privacidad_en.html';
}
