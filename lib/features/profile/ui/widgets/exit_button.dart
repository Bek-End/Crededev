import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExitButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const ExitButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          SvgPicture.asset('assets/arrow_forward.svg'),
        ],
      ),
    );
  }
}
