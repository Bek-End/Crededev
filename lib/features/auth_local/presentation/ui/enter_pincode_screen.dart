import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/features/auth_local/data/local_authentication_service.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/presentation/application/enter_pincode_bloc/enterpincode_bloc.dart';
import 'package:credo_p2p/features/auth_remote/presentation/ui/enter_phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../injection.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/pincode_widget.dart';
import 'widgets/snack_widget.dart';

class EnterPincodeScreen extends StatefulWidget {
  const EnterPincodeScreen({Key? key}) : super(key: key);

  @override
  _EnterPincodeScreenState createState() => _EnterPincodeScreenState();
}

class _EnterPincodeScreenState extends State<EnterPincodeScreen> {
  final controller = TextEditingController();
  final LocalAuthenticationService localAuthentication =
      getIt<LocalAuthenticationService>();
  bool showError = false;
  bool checkBioMetricOneTime = true;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    if (checkBioMetricOneTime) {
      if (await localAuthentication.hasBiometrics()) {
        if (await localAuthentication.authenticate()) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EnterPhoneNumberScreen(),
            ),
          );
        }
      }
    }
    checkBioMetricOneTime = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EnterpincodeBloc>(),
      child: BlocConsumer<EnterpincodeBloc, EnterpincodeState>(
        listener: (context, state) {
          logger.i("LISTENING");
          if (state.showError) {
            showError = true;
          }
          if (state.isOK) {
            showError = false;
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EnterPhoneNumberScreen(),
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
              icon: SvgPicture.asset(
                'assets/login/fingerprint-svgrepo-com.svg',
                color: kViolet,
              ),
              onPressed: () async {
                if (await localAuthentication.hasBiometrics()) {
                  if (await localAuthentication.authenticate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EnterPhoneNumberScreen(),
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
