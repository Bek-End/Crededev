import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/bottom_sheet_button.dart';

class AllLoansFilterReceiveBottomSheetWidget extends StatefulWidget {
  const AllLoansFilterReceiveBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<AllLoansFilterReceiveBottomSheetWidget> createState() =>
      _AllLoansFilterReceiveBottomSheetWidgetState();
}

class _AllLoansFilterReceiveBottomSheetWidgetState
    extends State<AllLoansFilterReceiveBottomSheetWidget> {
  AllLoansReceiveFilter sortEnum = AllLoansReceiveFilter.loans;
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
              GiveBottomSheetButton(
                title: 'Займы',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansReceiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansReceiveFilter.loans,
              ),
              GiveBottomSheetButton(
                title: 'Выплаты',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansReceiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansReceiveFilter.payments,
              ),
              GiveBottomSheetButton(
                title: 'Просрочки',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansReceiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansReceiveFilter.delays,
              ),
              GiveBottomSheetButton(
                title: 'Выплаты просрочки',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansReceiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansReceiveFilter.paymentsDelays,
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
