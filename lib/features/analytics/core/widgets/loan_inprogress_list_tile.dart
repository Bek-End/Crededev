import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoanInprogressListTile extends StatelessWidget {
final String leading;
  final Function() onPressed;
  const LoanInprogressListTile({
    Key? key,
    required this.leading,
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
            const Text(
              'Ожидается подтверждение',
              style: TextStyle(
                color: kBlackLight,
                fontWeight: FontWeight.w500,
                fontSize: 8,
              ),
            ),
            SvgPicture.asset('assets/edit.svg'),
          ],
        ),
      ),
    );
  }
}
