import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/core/widgets/transaction_list_tile.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/bottom_sheet_button.dart';
import 'package:credo_p2p/features/all_loans/give_loan/ui/widgets/sort_bottom_sheet_widget.dart';
import 'package:credo_p2p/features/profile/operation_history/ui/widgets/app_bar_with_title_and_actions.dart';
import 'package:credo_p2p/features/profile/operation_history/ui/widgets/operation_history_bottom_sheet.dart';
import 'package:flutter/material.dart';

class OperationHistoryScreen extends StatefulWidget {
  const OperationHistoryScreen({Key? key}) : super(key: key);

  @override
  _OperationHistoryScreenState createState() => _OperationHistoryScreenState();
}

class _OperationHistoryScreenState extends State<OperationHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitleAndActions(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'История операций',
        onSettingsPressed: () async {
          final res = await showModalBottomSheet<OperationHistoryFilter>(
            context: context,
            backgroundColor: kWhite,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            builder: (context) => const OperationHistoryBottomSheet(),
          );
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          TransactionListTile(
            title: 'Процент от займа',
            subtitle: 'Дата: 11.05.2021',
            trailing: '+3 000р',
            transaction: Transaction.percent,
          ),
          TransactionListTile(
            title: 'Инвестиция ',
            subtitle: 'Дата: 11.05.2021',
            trailing: '-33 000р',
            transaction: Transaction.investment,
          ),
          TransactionListTile(
            title: 'Процент от займа',
            subtitle: 'Дата: 11.05.2021',
            trailing: '+3 000р',
            transaction: Transaction.percent,
          ),
          TransactionListTile(
            title: 'Инвестиция ',
            subtitle: 'Дата: 11.05.2021',
            trailing: '-33 000р',
            transaction: Transaction.investment,
          ),
          TransactionListTile(
            title: 'Процент от займа',
            subtitle: 'Дата: 11.05.2021',
            trailing: '+3 000р',
            transaction: Transaction.percent,
          ),
          TransactionListTile(
            title: 'Инвестиция ',
            subtitle: 'Дата: 11.05.2021',
            trailing: '-33 000р',
            transaction: Transaction.investment,
          ),
        ],
      ),
    );
  }
}
