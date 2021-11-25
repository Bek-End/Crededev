import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class MoneyPlus extends StatelessWidget {
  final String money;
  final Function() onPressed;
  const MoneyPlus({
    Key? key,
    required this.money,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          money,
          style: const TextStyle(
            color: kBlack,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: kViolet,
            elevation: 0,
            shape: const CircleBorder(),
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(5),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: kWhite,
              size: 10,
            ),
          ),
        ),
      ],
    );
  }
}
