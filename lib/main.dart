import 'package:credo_p2p/core/style/app_theme.dart';
import 'package:credo_p2p/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
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
      },
      initialRoute: '/',
    );
  }
}
