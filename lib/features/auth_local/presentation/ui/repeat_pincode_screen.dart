import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/presentation/application/repeat_pincode_bloc/repeatpincode_bloc.dart';
import 'package:credo_p2p/features/auth_local/presentation/ui/widgets/snack_widget.dart';
import 'package:credo_p2p/features/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection.dart';
import '../../../../core/widgets/pincode_widget.dart';

class RepeatPincodeScreen extends StatefulWidget {
  final Pincode pincode;
  const RepeatPincodeScreen({
    Key? key,
    required this.pincode,
  }) : super(key: key);

  @override
  _RepeatPincodeScreenState createState() => _RepeatPincodeScreenState();
}

class _RepeatPincodeScreenState extends State<RepeatPincodeScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RepeatpincodeBloc>(),
      child: BlocConsumer<RepeatpincodeBloc, RepeatpincodeState>(
        listener: (context, state) {
          if (state.isok) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MainPage(),
              ),
            );
          }
          if (state.showError) {
            ScaffoldMessenger.of(context).showSnackBar(
              snackWidget(
                content: 'Pin codes dont match, try again',
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
                  'Повторите введенный PIN-код',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                PincodeWidget(
                  controller: controller,
                  onSubmit: (String? data) {
                    context.read<RepeatpincodeBloc>().add(
                          RepeatpincodeEvent.onPressed(
                            pincode: Pincode(
                              pin: int.parse(data!),
                            ),
                            prevPincode: widget.pincode,
                          ),
                        );
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
