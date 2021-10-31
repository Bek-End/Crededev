import 'dart:io';

import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/features/auth_local/data/local_authentication_service.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/presentation/application/enter_pincode_bloc/enterpincode_bloc.dart';
import 'package:credo_p2p/features/auth_remote/presentation/ui/enter_phone_number_screen.dart';
import 'package:credo_p2p/features/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../injection.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/pincode_widget.dart';
import 'widgets/snack_widget.dart';

// ignore: must_be_immutable
class EnterPincodeScreen extends StatefulWidget {
  bool bioOnetime = true;
  @override
  _EnterPincodeScreenState createState() => _EnterPincodeScreenState();
}

class _EnterPincodeScreenState extends State<EnterPincodeScreen> {
  final controller = TextEditingController();
  final LocalAuthenticationService localAuthentication =
      getIt<LocalAuthenticationService>();
  bool showError = false;

  Future<void> setUpBiometric(BuildContext context) async {
    if (await localAuthentication.hasBiometrics()) {
      if (await localAuthentication.authenticate()) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) {
        if (mounted) {
          setUpBiometric(context);
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EnterpincodeBloc>()
        ..add(
          const EnterpincodeEvent.initial(),
        ),
      child: BlocConsumer<EnterpincodeBloc, EnterpincodeState>(
        listener: (context, state) {
          if (state.checkBioMetric) {
            // setUpBiometric();
          }
          if (state.showError) {
            showError = true;
          }
          if (state.isOK) {
            showError = false;
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MainPage(),
              ),
            );
          }
          if (showError) {
            ScaffoldMessenger.of(context).showSnackBar(
              snackWidget(
                content: 'Wrong pin code, try again',
                label: 'Hide',
                onPressed: () {},
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kWhite,
            appBar: AppBarWidget(
              onPressed: () {},
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Введите PIN-код',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 20,
                ),
                PincodeWidget(
                  controller: controller,
                  onSubmit: (String? data) {
                    logger.i(data);
                    context.read<EnterpincodeBloc>().add(
                          EnterpincodeEvent.onPressed(
                            pincode: Pincode(
                              pin: int.parse(data!),
                            ),
                          ),
                        );
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                ForgotPasswordButton(
                  onPressed: () {},
                )
              ],
            ),
            floatingActionButton: IconButton(
              icon: Platform.isAndroid
                  ? SvgPicture.asset(
                      'assets/login/fingerprint-svgrepo-com.svg',
                      color: kViolet,
                    )
                  : SvgPicture.asset(
                      'assets/login/faceid.svg',
                      color: kViolet,
                    ),
              onPressed: () async {
                if (await localAuthentication.hasBiometrics()) {
                  if (await localAuthentication.authenticate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    snackWidget(
                      content:
                          "Your phone doesn't support biometrics, try entering pin code",
                      label: 'Hide',
                      onPressed: () {},
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
