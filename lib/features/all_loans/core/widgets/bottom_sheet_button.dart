import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AllLoansReceiveFilter {
  loans,
  payments,
  delays,
  paymentsDelays,
}

enum AllLoansGiveFilter {
  loans,
  payments,
  delays,
  income,
}

enum OperationHistoryFilter{
  givenLoans,
  receivedLoans,
  loanBack,
  comission,
}

class BottomSheetButton extends StatelessWidget {
  final String title;
  final Function(Object sortEnum) onPressed;
  final Object groupValue;
  final Object value;
  const BottomSheetButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.groupValue,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: groupValue == value ? kBlue : kVioletPale,
        onPrimary: kBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () => onPressed(value),
      child: Row(
        children: [
          if (groupValue == value) _buildEnabled() else _buildDisabled(),
          const SizedBox(
            width: 7,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEnabled() {
    return Container(
      height: 11,
      width: 11,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kViolet,
      ),
      child: SvgPicture.asset('assets/vector.svg'),
    );
  }

  Widget _buildDisabled() {
    return Container(
      height: 11,
      width: 11,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kLightGrey,
      ),
    );
  }
}
