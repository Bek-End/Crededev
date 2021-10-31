import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/core/widgets/snackbars.dart';
import 'package:credo_p2p/features/auth_remote/presentation/application/entrphonenumber_bloc/enterphonenumber_bloc.dart';
import 'package:credo_p2p/features/auth_remote/presentation/ui/enter_code_screen.dart';
import 'package:credo_p2p/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'widgets/phone_number_input.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  static const route = '/EnterPhoneNumber';
  const EnterPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  _EnterPhoneNumberScreenState createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {
  final controller = TextEditingController();
  final maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {
      "#": RegExp('[0-9]'),
    },
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EnterphonenumberBloc>(),
      child: BlocConsumer<EnterphonenumberBloc, EnterphonenumberState>(
        listener: (context, state) async {
          if (state.noInternet) {
            ScaffoldMessenger.of(context).showSnackBar(
              noInternetSnackbar,
            );
          }
          state.data.fold(
            (l) {
              if (l is ServerFailure) {
                final ServerFailure failure = l;
                logger.e(failure.stack);
              }
            },
            (r) {
              r.fold(
                (l) => null,
                (r) {
                  if (!state.noInternet) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EnterCodeScreen(
                          auth: r,
                          number: '+7${maskFormatter.getUnmaskedText()}',
                        ),
                      ),
                    );
                  }
                },
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kWhite,
            appBar: AppBarWidget(onPressed: () {}),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Введите номер телефона',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Введите номер телефона, чтобы получить код для входа',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      PhoneNumberInput(
                        formatter: maskFormatter,
                        controller: controller,
                      )
                    ],
                  ),
                  SafeArea(
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 9,
                      ),
                      width: double.infinity,
                      child: RoundButtonWidget(
                        title: 'Отправить',
                        onPressed: () {
                          context.read<EnterphonenumberBloc>().add(
                                EnterphonenumberEvent.onPressed(
                                  phoneNumber:
                                      '+7${maskFormatter.getUnmaskedText()}',
                                ),
                              );
                        },
                        enabled: !state.isSubmitting,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
