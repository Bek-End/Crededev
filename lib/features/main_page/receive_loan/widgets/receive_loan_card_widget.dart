import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class ReceiveLoanCardWidget extends StatelessWidget {
  final String title;
  final String money;
  final String percent;
  final String durationInDays;
  final String deadline;
  final Function() onPressed;
  const ReceiveLoanCardWidget({
    Key? key,
    required this.title,
    required this.money,
    required this.percent,
    required this.durationInDays,
    required this.deadline,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        onPrimary: kViolet,
        primary: kVioletVeryPale,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 9,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            _buildMoneyCard(text: money),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: kBlack,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    _buildRoundedCard(text: percent),
                    const SizedBox(
                      width: 3,
                    ),
                    _buildRoundedCard(text: durationInDays),
                    const SizedBox(
                      width: 3,
                    ),
                    _buildRoundedCard(text: deadline),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMoneyCard({required final String text}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kDarkGrey,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 9,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: kBlackLight,
          fontSize: 8,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildRoundedCard({required final String text}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kDarkGrey,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 5,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: kBlackLight,
          fontSize: 6,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
