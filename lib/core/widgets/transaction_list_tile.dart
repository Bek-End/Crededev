import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Transaction { percent, investment }

class TransactionListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final Transaction transaction;
  const TransactionListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kChartBlue,
                ),
                child: transaction == Transaction.investment
                    ? SvgPicture.asset(
                        'assets/profile/investment.svg',
                      )
                    : SvgPicture.asset(
                        'assets/profile/percent.svg',
                      ),
              ),
              const SizedBox(
                width: 9,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            trailing,
            style: const TextStyle(
              color: kBlack,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
