import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/bottom_sheet_button.dart';
import 'package:flutter/material.dart';

class OperationHistoryBottomSheet extends StatefulWidget {
  const OperationHistoryBottomSheet({Key? key}) : super(key: key);

  @override
  State<OperationHistoryBottomSheet> createState() =>
      _OperationHistoryBottomSheetState();
}

class _OperationHistoryBottomSheetState
    extends State<OperationHistoryBottomSheet> {
  OperationHistoryFilter sortEnum = OperationHistoryFilter.loanBack;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              _buildRectangle(),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Показать только',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kBlack,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              BottomSheetButton(
                title: 'Выданные займы',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as OperationHistoryFilter;
                  });
                },
                groupValue: sortEnum,
                value: OperationHistoryFilter.givenLoans,
              ),
              BottomSheetButton(
                title: 'Полученные займы',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as OperationHistoryFilter;
                  });
                },
                groupValue: sortEnum,
                value: OperationHistoryFilter.receivedLoans,
              ),
              BottomSheetButton(
                title: 'Возврат займов',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as OperationHistoryFilter;
                  });
                },
                groupValue: sortEnum,
                value: OperationHistoryFilter.loanBack,
              ),
              BottomSheetButton(
                title: 'Комиссию',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as OperationHistoryFilter;
                  });
                },
                groupValue: sortEnum,
                value: OperationHistoryFilter.comission,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: SafeArea(
              child: RoundButtonWidget(
                title: 'Применить',
                enabled: true,
                onPressed: () {
                  Navigator.pop(context, sortEnum);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRectangle() {
    return Container(
      width: 36,
      height: 3.78,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: kRectangleGrey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
