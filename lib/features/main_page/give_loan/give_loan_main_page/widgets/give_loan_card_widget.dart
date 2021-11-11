import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GiveLoanCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String money;
  final String percent;
  final String durationInDays;
  final String rating;
  final Function() onPressed;
  final String income;
  final String deadLine;
  const GiveLoanCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.money,
    required this.percent,
    required this.durationInDays,
    required this.rating,
    required this.onPressed,
    required this.income,
    required this.deadLine,
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
                  height: 3,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                  ),
                ),
                const SizedBox(
                  height: 4,
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
                    _buildRatingCard(text: rating),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Прибыль: ',
                          style: TextStyle(
                            color: kBlackLight,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          income,
                          style: const TextStyle(
                            color: kBlack,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Text(
                          'До: ',
                          style: TextStyle(
                            color: kBlackLight,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          deadLine,
                          style: const TextStyle(
                            color: kBlack,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

  Widget _buildRatingCard({required final String text}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kDarkGrey,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 5,
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/mini_star.svg'),
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: const TextStyle(
              color: kBlackLight,
              fontSize: 6,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
