import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c11/core/theme/applicition_theme_dart.dart';
import 'package:islami_app_c11/layout/layoutview.dart';
import 'package:islami_app_c11/moduls/hadith/hadith_details_view.dart';
import 'package:islami_app_c11/moduls/quran/Quran_details_view.dart';
import 'package:islami_app_c11/moduls/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      theme: ApplictionThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutView.routeName: (context) => LayOutView(),
        QuranDetailsView.routeNames: (context) => QuranDetailsView(),
        HadithDetailsView.routeName: (context) => const HadithDetailsView(),
      },
    );
  }
}
