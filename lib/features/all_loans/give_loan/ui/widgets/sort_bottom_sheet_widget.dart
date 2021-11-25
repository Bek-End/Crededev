import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/bottom_sheet_button.dart';

class AllLoansFilterGiveBottomSheetWidget extends StatefulWidget {
  const AllLoansFilterGiveBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<AllLoansFilterGiveBottomSheetWidget> createState() =>
      _AllLoansFilterGiveBottomSheetWidgetState();
}

class _AllLoansFilterGiveBottomSheetWidgetState
    extends State<AllLoansFilterGiveBottomSheetWidget> {
  AllLoansGiveFilter sortEnum = AllLoansGiveFilter.loans;
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
                    sortEnum = e as AllLoansGiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansGiveFilter.loans,
              ),
              GiveBottomSheetButton(
                title: 'Выплаты',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansGiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansGiveFilter.payments,
              ),
              GiveBottomSheetButton(
                title: 'Просрочки',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansGiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansGiveFilter.delays,
              ),
              GiveBottomSheetButton(
                title: 'Прибыль',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e as AllLoansGiveFilter;
                  });
                },
                groupValue: sortEnum,
                value: AllLoansGiveFilter.income,
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
