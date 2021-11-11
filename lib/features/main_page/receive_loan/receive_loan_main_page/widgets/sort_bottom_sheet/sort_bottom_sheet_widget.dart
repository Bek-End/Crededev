import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet_button.dart';

class ReceiveSortBottomSheetWidget extends StatefulWidget {
  const ReceiveSortBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<ReceiveSortBottomSheetWidget> createState() => _ReceiveSortBottomSheetWidgetState();
}

class _ReceiveSortBottomSheetWidgetState extends State<ReceiveSortBottomSheetWidget> {
  ReceiveSortEnum sortEnum = ReceiveSortEnum.highRate;
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
                'Показать сначала',
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
                title: 'На самый большой срок',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e;
                  });
                },
                groupValue: sortEnum,
                value: ReceiveSortEnum.longDuration,
              ),
              BottomSheetButton(
                title: 'С самым низким процентом',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e;
                  });
                },
                groupValue: sortEnum,
                value: ReceiveSortEnum.bigPercent,
              ),
              BottomSheetButton(
                title: 'С самым высоким рейтингом',
                onPressed: (e) {
                  setState(() {
                    sortEnum = e;
                  });
                },
                groupValue: sortEnum,
                value: ReceiveSortEnum.highRate,
              )
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
