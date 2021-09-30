import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberInput extends StatelessWidget {
  final MaskTextInputFormatter formatter;
  final TextEditingController controller;
  const PhoneNumberInput({
    Key? key,
    required this.formatter,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        cursorColor: kViolet,
        decoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 16,
          color: kBlack,
        ),
        inputFormatters: [
          formatter,
        ],
      ),
    );
  }
}
