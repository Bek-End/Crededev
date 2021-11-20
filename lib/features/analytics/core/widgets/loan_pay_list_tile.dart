import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoanPayListTile extends StatelessWidget {
  final String leading;
  final String date;
  final Function() onPressed;

  const LoanPayListTile({
    Key? key,
    required this.leading,
    required this.date,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: kVioletVeryPale,
          onPrimary: kViolet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 7,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leading,
              style: const TextStyle(
                color: kBlack,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                const Text(
                  'Платёж: ',
                  style: TextStyle(
                    color: kBlackLight,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
            const Icon(
              CupertinoIcons.forward,
              color: kBlack,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
