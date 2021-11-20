import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class InfoList extends StatelessWidget {
  final String title;
  final List<Map<String, String>> data;

  const InfoList({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 9,
        ),
        Column(
          children: List.generate(
            data.length,
            (i) => Container(
              margin: const EdgeInsets.only(
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data[i].keys.toList()[0],
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    data[i].values.toList()[0],
                    style: const TextStyle(
                      color: kBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
