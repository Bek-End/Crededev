import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class RoundedInfoToast extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String leading;
  final String trailing;
  const RoundedInfoToast({
    Key? key,
    required this.color,
    required this.textColor,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 7,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            leading,
            style: TextStyle(
              color: textColor,
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            trailing,
            style: TextStyle(
              color: textColor,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
