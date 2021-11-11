import 'package:flutter/material.dart';

import 'package:credo_p2p/core/style/colors.dart';

class MoneyBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  const MoneyBanner({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kVioletVeryPale,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
