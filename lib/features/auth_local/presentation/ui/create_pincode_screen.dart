import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/forgot_password_button.dart';
import 'widgets/pincode_widget.dart';

class CreatePincodeScreen extends StatefulWidget {
  const CreatePincodeScreen({Key? key}) : super(key: key);

  @override
  _CreatePincodeScreenState createState() => _CreatePincodeScreenState();
}

class _CreatePincodeScreenState extends State<CreatePincodeScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          ),
          const SizedBox(
            height: 80,
          ),
          ForgotPasswordButton(
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
