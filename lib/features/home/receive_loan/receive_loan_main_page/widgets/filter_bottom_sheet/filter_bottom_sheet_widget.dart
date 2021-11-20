import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/core/widgets/round_button_light_widget.dart';
import 'package:credo_p2p/features/home/receive_loan/receive_loan_main_page/data/filter_model.dart';
import 'package:flutter/material.dart';

import 'currency_textfield.dart';
import 'duration_button.dart';
import 'filter_rating_button.dart';
import 'percentage_textfield.dart';

class FilterBottomSheetWidget extends StatefulWidget {
  const FilterBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _FilterBottomSheetWidgetState createState() =>
      _FilterBottomSheetWidgetState();
}

class _FilterBottomSheetWidgetState extends State<FilterBottomSheetWidget> {
  Rating rating = Rating.none;
  LoanDuration loanDuration = LoanDuration.none;
  TextEditingController fromSumController = TextEditingController();
  TextEditingController toSumController = TextEditingController();
  TextEditingController fromPercentController = TextEditingController();
  TextEditingController toPercentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(child: _buildRectangle()),
            const SizedBox(
              height: 18,
            ),
            const Align(
              child: Text(
                'Фильтры',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kBlack,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Рейтинг кредитных заявок',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                FilterRatingButton(
                  onPressed: (e) {
                    setState(() {
                      rating = e;
                    });
                  },
                  title: '5',
                  groupValue: rating,
                  value: Rating.five,
                ),
                const SizedBox(
                  width: 4,
                ),
                FilterRatingButton(
                  onPressed: (e) {
                    setState(() {
                      rating = e;
                    });
                  },
                  title: '4+',
                  groupValue: rating,
                  value: Rating.four,
                ),
                const SizedBox(
                  width: 4,
                ),
                FilterRatingButton(
                  onPressed: (e) {
                    setState(() {
                      rating = e;
                    });
                  },
                  title: '3+',
                  groupValue: rating,
                  value: Rating.three,
                ),
                const SizedBox(
                  width: 4,
                ),
                FilterRatingButton(
                  onPressed: (e) {
                    setState(() {
                      rating = e;
                    });
                  },
                  title: '2+',
                  groupValue: rating,
                  value: Rating.two,
                ),
                const SizedBox(
                  width: 4,
                ),
                FilterRatingButton(
                  onPressed: (e) {
                    setState(() {
                      rating = e;
                    });
                  },
                  title: '1+',
                  groupValue: rating,
                  value: Rating.one,
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Сумма займа',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: CurrencyTextField(
                    leading: 'от:',
                    hintText: '5 000р',
                    controller: fromSumController,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: CurrencyTextField(
                    leading: 'до:',
                    hintText: '1 000 000р',
                    controller: toSumController,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Процент',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: PercentageTextField(
                    leading: 'от:',
                    hintText: '1',
                    controller: fromPercentController,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: PercentageTextField(
                    leading: 'до:',
                    hintText: '3 000',
                    controller: toPercentController,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Срок займа',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    LoanDurationButton(
                      onPressed: (e) {
                        setState(() {
                          loanDuration = e;
                        });
                      },
                      title: 'До 1 месяца',
                      groupValue: loanDuration,
                      value: LoanDuration.untilOneMonth,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    LoanDurationButton(
                      onPressed: (e) {
                        setState(() {
                          loanDuration = e;
                        });
                      },
                      title: '1-3 месяца',
                      groupValue: loanDuration,
                      value: LoanDuration.fromOneToThreeMonth,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    LoanDurationButton(
                      onPressed: (e) {
                        setState(() {
                          loanDuration = e;
                        });
                      },
                      title: '3-6 месяцев',
                      groupValue: loanDuration,
                      value: LoanDuration.fromThreeToSixMonth,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                  ],
                ),
                Row(
                  children: [
                    LoanDurationButton(
                      onPressed: (e) {
                        setState(() {
                          loanDuration = e;
                        });
                      },
                      title: 'Более 6 месяцев',
                      groupValue: loanDuration,
                      value: LoanDuration.moreThanSixMonth,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              child: RoundButtonLightWidget(
                title: 'Сбросить фильтры',
                enabled: true,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: double.infinity,
              child: RoundButtonWidget(
                title: 'Применить',
                enabled: true,
                onPressed: () {},
              ),
            ),
          ],
        ),
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
