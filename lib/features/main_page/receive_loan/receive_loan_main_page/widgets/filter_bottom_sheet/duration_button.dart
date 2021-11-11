import 'dart:ui';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/main_page/receive_loan/receive_loan_main_page/data/filter_model.dart';
import 'package:flutter/material.dart';

class LoanDurationButton extends StatelessWidget {
  final Function(LoanDuration loanDuration) onPressed;
  final String title;
  final LoanDuration groupValue;
  final LoanDuration value;
  const LoanDurationButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.groupValue,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: groupValue == value ? kBlue : kVioletPale,
        padding: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 10,
        ),
        onPrimary: kBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {
        if (groupValue == value) {
          onPressed(LoanDuration.none);
        } else {
          onPressed(value);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
