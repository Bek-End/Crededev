import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LoanPercentListTile extends StatelessWidget {
  final String leading;
  final int percent;
  final Function() onPressed;
  const LoanPercentListTile({
    Key? key,
    required this.leading,
    required this.percent,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: kViolet,
          onPrimary: kBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 7,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leading,
              style: const TextStyle(
                color: kWhite,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            CircularPercentIndicator(
              radius: 30,
              percent: percent * 0.01,
              center: Text(
                '${percent.toString()}%',
                style: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 7,
                ),
              ),
              progressColor: kDarkBlue,
              backgroundColor: kVioletVeryPale,
              lineWidth: 3,
              circularStrokeCap: CircularStrokeCap.round,
            ),
            const Icon(
              CupertinoIcons.forward,
              color: kWhite,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
