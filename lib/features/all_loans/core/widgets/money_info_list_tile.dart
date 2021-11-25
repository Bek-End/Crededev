import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoneyInfoListTile extends StatelessWidget {
  final bool isOk;
  final String title;
  final String subtitle;
  final String trailing;
  const MoneyInfoListTile({
    Key? key,
    required this.isOk,
    required this.title,
    required this.subtitle,
    required this.trailing,
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
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kChartBlue,
                    ),
                    child: SvgPicture.asset(
                      'assets/loan.svg',
                    ),
                  ),
                  Container(
                    height: 9,
                    width: 9,
                    decoration: BoxDecoration(
                      color: isOk ? kDarkViolet : kRed,
                      shape: BoxShape.circle,
                    ),
                    child: isOk
                        ? const Icon(
                            Icons.check_rounded,
                            color: kWhite,
                            size: 8,
                          )
                        : const Icon(
                            Icons.close_rounded,
                            size: 8,
                            color: kWhite,
                          ),
                  ),
                ],
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
                    style: TextStyle(
                      color: isOk ? kBlack : kRed,
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
            style: TextStyle(
              color: isOk ? kBlack : kRed,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
