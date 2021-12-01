import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/features/auth_local/domain/pincode.dart';
import 'package:credo_p2p/features/auth_local/presentation/application/create_pincode_bloc/createpincode_bloc.dart';
import 'package:credo_p2p/features/auth_local/presentation/ui/repeat_pincode_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection.dart';
import '../../../../core/widgets/pincode_widget.dart';

class CreatePincodeScreen extends StatefulWidget {
  const CreatePincodeScreen({Key? key}) : super(key: key);

  @override
  _CreatePincodeScreenState createState() => _CreatePincodeScreenState();
}

class _CreatePincodeScreenState extends State<CreatePincodeScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatepincodeBloc>(),
      child: BlocConsumer<CreatepincodeBloc, CreatepincodeState>(
        listener: (context, state) {
          if (state.isOk) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RepeatPincodeScreen(
                  pincode: state.pincode,
                ),
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
                  'Создайте PIN-код',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 20,
                ),
                PincodeWidget(
                  controller: controller,
                  onSubmit: (String? data) {
                    context.read<CreatepincodeBloc>().add(
                          CreatepincodeEvent.onPressed(
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
              ],
            ),
          );
        },
      ),
    );
  }
}
