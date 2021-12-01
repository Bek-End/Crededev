import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/profile/my_cards/ui/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';

class BottomInfoSheet extends StatelessWidget {
  final List<TransactionListTile> transactions;
  const BottomInfoSheet({
    Key? key,
    required this.transactions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 3.8,
                width: 36,
                decoration: BoxDecoration(
                  color: kRectangleGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Text(
                'Транзакции',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
            ] +
            transactions,
      ),
    );
  }
}
