import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/core/widgets/round_button_light_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'widgets/input_field.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
        title: 'Добавить карту',
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
                AddCardInputField(
                  controller: nameController,
                  hintText: 'Фамилия и имя',
                ),
                const SizedBox(
                  height: 6,
                ),
                AddCardInputField(
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
                      child: AddCardInputField(
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
                      child: AddCardInputField(
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
                  title: 'Сохранить',
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
