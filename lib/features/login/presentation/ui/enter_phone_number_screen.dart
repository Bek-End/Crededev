import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/core/widgets/outlined_button.dart';
import 'package:credo_p2p/features/login/presentation/ui/widgets/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
                child: OutlinedButtonWidget(
                  title: 'Отправить',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
