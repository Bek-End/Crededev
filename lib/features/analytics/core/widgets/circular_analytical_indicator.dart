import 'dart:ui';

import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularAnalyticalChart extends StatelessWidget {
  final int greyPercent;
  final int violetPercent;
  final int bluePercent;
  final String title;
  final String money;
  final String date;
  const CircularAnalyticalChart({
    Key? key,
    required this.greyPercent,
    required this.violetPercent,
    required this.bluePercent,
    required this.title,
    required this.money,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularPercentIndicator(
            reverse: true,
            radius: 160,
            lineWidth: 20,
            percent: (bluePercent + greyPercent) * 0.01,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: kDarkBlue,
            backgroundColor: kTrans,
            animation: true,
            animationDuration: 300,
          ),
          CircularPercentIndicator(
            radius: 160,
            reverse: true,
            circularStrokeCap: CircularStrokeCap.round,
            lineWidth: 20,
            percent: greyPercent * 0.01,
            progressColor: kChartBlue,
            backgroundColor: kTrans,
            animation: true,
            animationDuration: 300,
          ),
          CircularPercentIndicator(
            radius: 160,
            lineWidth: 20,
            percent: violetPercent * 0.01,
            progressColor: kViolet,
            circularStrokeCap: CircularStrokeCap.round,
            animation: true,
            backgroundColor: kTrans,
            animationDuration: 300,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                money,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                date,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
