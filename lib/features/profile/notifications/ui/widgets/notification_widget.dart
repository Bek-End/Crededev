import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String title;
  final String time;
  final String body;
  const NotificationWidget({
    Key? key,
    required this.title,
    required this.time,
    required this.body,
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: kChartBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
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
              Text(
                time,
                style: const TextStyle(
                  color: kBlack,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            body,
            style: const TextStyle(
              color: kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
