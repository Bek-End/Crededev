import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/core/widgets/round_button_light_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'widgets/input_field.dart';

class PayLoanScreen extends StatefulWidget {
  const PayLoanScreen({Key? key}) : super(key: key);

  @override
  _PayLoanScreenState createState() => _PayLoanScreenState();
}

class _PayLoanScreenState extends State<PayLoanScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: 'Оплата займа',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                PayLoanInputField(
                  controller: nameController,
                  hintText: 'Фамилия и имя',
                ),
                const SizedBox(
                  height: 6,
                ),
                PayLoanInputField(
                  controller: cardController,
                  hintText: 'Номер карты:',
                  inputFormatter: MaskTextInputFormatter(
                    mask: '#### #### #### ####',
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                      child: PayLoanInputField(
                        controller: durationController,
                        hintText: 'Срок десйт.',
                        inputFormatter: MaskTextInputFormatter(
                          mask: '##/##',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: PayLoanInputField(
                        controller: cvcController,
                        hintText: 'CVV/CVC',
                        inputFormatter: MaskTextInputFormatter(
                          mask: '###',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RoundButtonLightWidget(
                    title: 'Сделать фото карты',
                    enabled: true,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: RoundButtonWidget(
                  title: 'Оплатить 5 200р',
                  enabled: true,
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
