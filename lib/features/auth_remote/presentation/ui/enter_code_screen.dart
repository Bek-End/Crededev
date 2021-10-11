import 'package:credo_p2p/core/errors/failures.dart';
import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/core/widgets/snackbars.dart';
import 'package:credo_p2p/features/auth_remote/domain/entities/auth_enum.dart';
import 'package:credo_p2p/features/auth_remote/presentation/application/entercode_bloc.dart/entercode_bloc.dart';
import 'package:credo_p2p/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/pinput_widget.dart';

class EnterCodeScreen extends StatefulWidget {
  final Auth auth;
  final String number;
  const EnterCodeScreen({
    Key? key,
    required this.auth,
    required this.number,
  }) : super(key: key);

  @override
  _EnterCodeScreenState createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EntercodeBloc>()
        ..add(
          EntercodeEvent.initial(
            auth: widget.auth,
            number: widget.number,
          ),
        ),
      child: BlocConsumer<EntercodeBloc, EntercodeState>(
        listener: (context, state) {
          if (!state.internetConnected) {
            ScaffoldMessenger.of(context).showSnackBar(
              noInternetSnackbar,
            );
          }
          if (state.done) {
            logger.i("EVERYTHING DONE");
          }
          if (state.wrongCode) {
            ScaffoldMessenger.of(context).showSnackBar(
              wrongCodeSnackBar,
            );
          }
          state.data.fold(
            (l) {
              final ServerFailure failure = l as ServerFailure;
              logger.e(failure.stack);
            },
            (r) {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: kWhite,
            appBar: AppBarWidget(
              onPressed: () {},
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Введите код',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Введите код, который мы  отправили Вам на номер телефона',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 12),
                  PinputWidget(
                    controller: controller,
                    onSubmit: (e) {
                      logger.i(e);
                      context.read<EntercodeBloc>().add(
                            EntercodeEvent.onPressed(code: e!),
                          );
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text(
                      'Повторный код можно отправить через 58 сек',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
