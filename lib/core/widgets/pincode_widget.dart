import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PincodeWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String? data) onSubmit;
  const PincodeWidget({
    Key? key,
    required this.controller,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinPut(
      fieldsCount: 4,
      obscureText: '',
      controller: controller,
      onSubmit: onSubmit,
      fieldsAlignment: MainAxisAlignment.center,
      eachFieldConstraints: const BoxConstraints(
        maxWidth: 12,
        maxHeight: 12,
      ),
      eachFieldMargin: const EdgeInsets.only(right: 7, left: 7),
      selectedFieldDecoration: const BoxDecoration(
        color: kVioletPale,
        shape: BoxShape.circle,
      ),
      followingFieldDecoration: const BoxDecoration(
        color: kGrey,
        shape: BoxShape.circle,
      ),
      disabledDecoration: const BoxDecoration(
        color: kViolet,
        shape: BoxShape.circle,
      ),
      submittedFieldDecoration: const BoxDecoration(
        color: kViolet,
        shape: BoxShape.circle,
      ),
    );
  }
}
