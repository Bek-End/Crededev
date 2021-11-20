import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PayLoanInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputFormatter? inputFormatter;
  const PayLoanInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.inputFormatter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kVioletVeryPale,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(14),
      child: CupertinoTextField(
        controller: controller,
        placeholder: hintText,
        inputFormatters: inputFormatter != null
            ? [
                inputFormatter!,
              ]
            : null,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: kBlack,
        ),
        placeholderStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: kBlackLight,
        ),
        decoration: null,
      ),
    );
  }
}
