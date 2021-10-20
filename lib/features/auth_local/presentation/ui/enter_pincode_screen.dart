import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

import 'widgets/forgot_password_button.dart';
import 'widgets/pincode_widget.dart';

class EnterPincodeScreen extends StatefulWidget {
  const EnterPincodeScreen({Key? key}) : super(key: key);

  @override
  _EnterPincodeScreenState createState() => _EnterPincodeScreenState();
}

class _EnterPincodeScreenState extends State<EnterPincodeScreen> {
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
            'Введите PIN-код',
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
