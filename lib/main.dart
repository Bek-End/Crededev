import 'dart:io';
import 'package:credo_p2p/core/style/app_theme.dart';
import 'package:credo_p2p/features/auth_local/presentation/ui/enter_pincode_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'core/bloc/pin_bloc/pin_bloc.dart';
import 'features/auth_remote/presentation/ui/enter_phone_number_screen.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    late bool switcher;
    late bool isLoading = false;
    return BlocProvider(
      create: (context) => getIt<PinBloc>()..add(PinInitialEvent()),
      child: BlocConsumer<PinBloc, PinState>(
        listener: (context, state) {
          if (state is PinLoading) {
            isLoading = true;
          }
          if (state is PinDataState) {
            switcher = state.hasPin;
            isLoading = false;
          }
        },
        builder: (context, state) {
          if (isLoading) {
            return MaterialApp(
              title: 'Credo P2P',
              debugShowCheckedModeBanner: false,
              theme: appThemeData,
              // routes: {
              //   OnboardingScreen.route: (context) => const OnboardingScreen(),
              //   EnterPhoneNumberScreen.route: (context) =>
              //       const EnterPhoneNumberScreen()
              // },
              // initialRoute: '/',
              home: switcher
                  ? const EnterPhoneNumberScreen()
                  : const EnterPincodeScreen(),
            );
          } else {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: FlutterLogo(),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
