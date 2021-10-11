import 'dart:io';

import 'package:credo_p2p/core/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'features/auth_remote/presentation/ui/enter_phone_number_screen.dart';
import 'features/onboarding/presentation/ui/onboarding_screen.dart';
import 'injection.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credo P2P',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      routes: {
        OnboardingScreen.route: (context) => const OnboardingScreen(),
        EnterPhoneNumberScreen.route: (context) =>
            const EnterPhoneNumberScreen()
      },
      initialRoute: '/',
    );
  }
}
