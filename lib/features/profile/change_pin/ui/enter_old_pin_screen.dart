import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/core/widgets/pincode_widget.dart';
import 'package:credo_p2p/features/profile/change_pin/ui/create_new_pin_screen.dart';
import 'package:flutter/material.dart';

class EnterOldPinScreen extends StatefulWidget {
  const EnterOldPinScreen({Key? key}) : super(key: key);

  @override
  _EnterOldPinScreenState createState() => _EnterOldPinScreenState();
}

class _EnterOldPinScreenState extends State<EnterOldPinScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBarWidget(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Введите старый PIN-код',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          PincodeWidget(
            controller: controller,
            onSubmit: (String? data) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateNewPinScreen(),
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
  }
}
