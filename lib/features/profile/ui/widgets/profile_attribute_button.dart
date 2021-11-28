import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAttributeButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final String subtitle;
  final String assetPath;
  const ProfileAttributeButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.subtitle,
    required this.assetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(15),
        elevation: 0,
        primary: kBlack,
        backgroundColor: kVioletVeryPale,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: kChartBlue,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              assetPath,
            ),
          ),
        ],
      ),
    );
  }
}
