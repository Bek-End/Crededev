import 'package:credo_p2p/core/style/colors.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  final String leading;
  final String hintText;
  final TextEditingController controller;
  const CurrencyTextField({
    Key? key,
    required this.leading,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kVioletPale,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Text(leading),
          Expanded(
            child: CupertinoTextField.borderless(
              cursorColor: kViolet,
              placeholderStyle: const TextStyle(
                color: kBlackLight,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              padding: const EdgeInsets.only(top: 1,left: 5),
              keyboardType: TextInputType.number,
              inputFormatters: [
                CurrencyTextInputFormatter(
                  locale: 'ru',
                  symbol: 'р',
                ),
              ],
              controller: controller,
              placeholder: hintText,
              decoration: const BoxDecoration(),
              style: const TextStyle(
                color: kBlack,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
