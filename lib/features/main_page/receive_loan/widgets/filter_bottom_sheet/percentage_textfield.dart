import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PercentageTextField extends StatefulWidget {
  final String leading;
  final String hintText;
  final TextEditingController controller;
  const PercentageTextField({
    Key? key,
    required this.leading,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<PercentageTextField> createState() => _PercentageTextFieldState();
}

class _PercentageTextFieldState extends State<PercentageTextField> {
  final maskFormatter = MaskTextInputFormatter(
    mask: " ### ### ###",
    filter: {
      "#": RegExp('[0-9]'),
    },
  );
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
          Text(widget.leading),
          Expanded(
            child: CupertinoTextField.borderless(
              suffix: const Text(
                '%',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              inputFormatters: [maskFormatter],
              cursorColor: kViolet,
              placeholderStyle: const TextStyle(
                color: kBlackLight,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              padding: const EdgeInsets.only(top: 1, left: 5),
              keyboardType: TextInputType.number,
              controller: widget.controller,
              placeholder: widget.hintText,
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
