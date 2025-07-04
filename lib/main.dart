// lib/main.dart

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:html' as html;

// Imports para la internacionalización
import '/l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // El título de la app ahora se obtiene de las localizaciones
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(
        primarySwatch: _createMaterialColor(const Color(0xFF40E0D0)),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: _createMaterialColor(const Color(0xFF40E0D0)),
          accentColor: const Color(0xFF40E0D0),
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      // --- Configuración de Internacionalización ---
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // -----------------------------------------
      home: const SplashScreen(),
    );
  }

  MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: _pulseController,
        curve: Curves.easeOut,
      ),
    );

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _pulseAnimation,
              child: Image.asset(
                'assets/icon_android.png',
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              // Texto internacionalizado
              AppLocalizations.of(context)!.loadingMessage,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _titleAnimationController;
  late AnimationController _leftCardAnimationController;
  late AnimationController _rightCardAnimationController;
  late AnimationController _bottomTextAnimationController;

  late Animation<Offset> _titleSlideAnimation;
  late Animation<double> _titleFadeAnimation;
  late Animation<Offset> _leftCardSlideAnimation;
  late Animation<double> _leftCardFadeAnimation;
  late Animation<Offset> _rightCardSlideAnimation;
  late Animation<double> _rightCardFadeAnimation;
  late Animation<double> _bottomTextFadeAnimation;

  final String playStoreUrl = 'https://play.google.com/store/apps/details?id=com.yourcompany.yourapp';
  final String appleStoreUrl = 'https://apps.apple.com/us/app/your-app-name/id1234567890';

  @override
  void initState() {
    super.initState();

    _titleAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _leftCardAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _rightCardAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _bottomTextAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));

    _titleSlideAnimation = Tween<Offset>(begin: const Offset(0.0, -1.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _titleAnimationController, curve: Curves.bounceOut));
    _titleFadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _titleAnimationController, curve: Curves.easeIn));

    _leftCardSlideAnimation = Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _leftCardAnimationController, curve: Curves.bounceOut));
    _leftCardFadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _leftCardAnimationController, curve: Curves.easeIn));

    _rightCardSlideAnimation = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _rightCardAnimationController, curve: Curves.bounceOut));
    _rightCardFadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _rightCardAnimationController, curve: Curves.easeIn));

    _bottomTextFadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _bottomTextAnimationController, curve: Curves.easeIn));

    Future.delayed(const Duration(milliseconds: 500), () => _titleAnimationController.forward());
    Future.delayed(const Duration(milliseconds: 1000), () => _leftCardAnimationController.forward());
    Future.delayed(const Duration(milliseconds: 1300), () => _rightCardAnimationController.forward());
    Future.delayed(const Duration(milliseconds: 1800), () => _bottomTextAnimationController.forward());
  }

  @override
  void dispose() {
    _titleAnimationController.dispose();
    _leftCardAnimationController.dispose();
    _rightCardAnimationController.dispose();
    _bottomTextAnimationController.dispose();
    super.dispose();
  }

  void _launchUrl(String url) {
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double getResponsiveFontSize(double baseSize) {
      if (screenWidth < 600) return baseSize * 0.8;
      if (screenWidth < 1200) return baseSize * 1.0;
      return baseSize * 1.2;
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icon_android.png', height: 30, width: 30),
            const SizedBox(width: 8),
            // Texto internacionalizado
            Text(AppLocalizations.of(context)!.appTitle, style: const TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.8),
              Theme.of(context).primaryColor.withOpacity(0.6),
              const Color(0xFFE0FFFF),
            ],
            stops: const [0.1, 0.5, 0.9],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeTransition(
                      opacity: _titleFadeAnimation,
                      child: SlideTransition(
                        position: _titleSlideAnimation,
                        child: Text(
                          // Texto internacionalizado
                          AppLocalizations.of(context)!.mainTitle,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: getResponsiveFontSize(32),
                            shadows: [
                              Shadow(blurRadius: 10.0, color: Colors.black.withOpacity(0.3), offset: const Offset(2.0, 2.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 40.0,
                      runSpacing: 40.0,
                      children: [
                        FadeTransition(
                          opacity: _leftCardFadeAnimation,
                          child: SlideTransition(
                            position: _leftCardSlideAnimation,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      // Texto internacionalizado
                                      AppLocalizations.of(context)!.googlePlayTitle,
                                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    QrImageView(
                                      data: playStoreUrl,
                                      version: QrVersions.auto,
                                      size: 200.0,
                                      backgroundColor: Colors.white,
                                      eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: Theme.of(context).primaryColor),
                                      dataModuleStyle: QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Theme.of(context).primaryColor),
                                    ),
                                    const SizedBox(height: 15),
                                    GestureDetector(
                                      onTap: () => _launchUrl(playStoreUrl),
                                      child: Image.asset('assets/googlebadge.png', height: 50),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        FadeTransition(
                          opacity: _rightCardFadeAnimation,
                          child: SlideTransition(
                            position: _rightCardSlideAnimation,
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      // Texto internacionalizado
                                      AppLocalizations.of(context)!.appleStoreTitle,
                                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    QrImageView(
                                      data: appleStoreUrl,
                                      version: QrVersions.auto,
                                      size: 200.0,
                                      backgroundColor: Colors.white,
                                      eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: Theme.of(context).primaryColor),
                                      dataModuleStyle: QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: Theme.of(context).primaryColor),
                                    ),
                                    const SizedBox(height: 15),
                                    GestureDetector(
                                      onTap: () => _launchUrl(appleStoreUrl),
                                      child: Image.asset('assets/applebadge.png', height: 50),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    FadeTransition(
                      opacity: _bottomTextFadeAnimation,
                      child: Text(
                        // Texto internacionalizado
                        AppLocalizations.of(context)!.scanInstructions,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: getResponsiveFontSize(18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () => _launchUrl(AppLocalizations.of(context)!.privacyPolicyUrl),
                    child: Text(
                      // Texto internacionalizado
                      AppLocalizations.of(context)!.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    // Texto internacionalizado con variable
                    AppLocalizations.of(context)!.copyright(DateTime.now().year),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}