import 'package:doos/providers/language_provider.dart';
import 'package:doos/screens/home_page_3.dart';
import 'package:doos/screens/invoice.dart';
import 'package:doos/screens/invoice_1.dart';
import 'package:doos/screens/notification-1.dart';
import 'package:doos/screens/notification.dart';
import 'package:doos/screens/race_page.dart';
import 'package:doos/screens/race_page_1.dart';
import 'package:doos/screens/race_page_2.dart';
import 'package:doos/screens/race_page_3.dart';
import 'package:doos/screens/race_page_4.dart';
import 'package:doos/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:provider/provider.dart';

import 'authentication/create_account.dart';
import 'authentication/create_account_1.dart';
import 'authentication/create_account_2.dart';
import 'authentication/loading_page_login.dart';
import 'authentication/login_account.dart';
import 'authentication/login_code.dart';
import 'bottomnavigationbar/bottom_navigation.dart';

Future<void> main() async {
  // if your flutter > 1.7.8 :  ensure flutter activated
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );

  runApp(
    LocalizedApp(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Doos',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        localizationsDelegates: translator.delegates,
        locale: translator.activeLocale,
        supportedLocales: translator.locals(),
      ),
    );
  }
}
