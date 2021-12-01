import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/core/widgets/pincode_widget.dart';
import 'package:flutter/material.dart';

class CreateNewPinScreen extends StatefulWidget {
  const CreateNewPinScreen({Key? key}) : super(key: key);

  @override
  _CreateNewPinScreenState createState() => _CreateNewPinScreenState();
}

class _CreateNewPinScreenState extends State<CreateNewPinScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBarWidget(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pop(context);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Придумайте новый PIN-код',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20,
          ),
          PincodeWidget(
            controller: controller,
            onSubmit: (String? data) {
              Navigator.pop(context);
              Navigator.pop(context);
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
