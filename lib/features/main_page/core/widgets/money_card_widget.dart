import 'dart:ui';

import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class MoneyCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const MoneyCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 136,
        minHeight: 63,
      ),
      decoration: BoxDecoration(
        color: kVioletVeryPale,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kViolet,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: kBlackLight,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
