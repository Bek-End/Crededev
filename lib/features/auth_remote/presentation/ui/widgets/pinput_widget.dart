import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String? data) onSubmit;
  const PinputWidget({
    Key? key,
    required this.controller,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinPut(
      fieldsCount: 6,
      onSubmit: onSubmit,
      separator: const SizedBox(
        width: 7,
      ),
      controller: controller,
      submittedFieldDecoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      followingFieldDecoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      disabledDecoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      selectedFieldDecoration: BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
