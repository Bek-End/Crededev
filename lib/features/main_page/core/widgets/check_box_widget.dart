import 'dart:ui';

import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool isEnabled;
  final Function() onPressed;
  final String text;
  const CheckBoxWidget({
    Key? key,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            primary: kDarkBlue,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(4),
          ),
          child: Container(
            height: 14,
            width: 14,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: isEnabled ? kDarkGrey : kViolet,
              borderRadius: BorderRadius.circular(2),
            ),
            child: SvgPicture.asset(
              'assets/check_box.svg',
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: const TextStyle(
            color: kBlack,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
