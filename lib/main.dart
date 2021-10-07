import 'package:credo_p2p/core/style/app_theme.dart';
import 'package:credo_p2p/features/login/presentation/ui/enter_phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'features/onboarding/presentation/ui/onboarding_screen.dart';

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
        EnterPhoneNumberScreen.route: (context) =>
            const EnterPhoneNumberScreen()
      },
      initialRoute: '/',
    );
  }
}
