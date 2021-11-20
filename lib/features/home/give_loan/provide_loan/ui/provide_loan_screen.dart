import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/home/core/widgets/check_box_widget.dart';
import 'package:credo_p2p/features/home/core/widgets/dismissable_banner.dart';
import 'package:credo_p2p/features/home/core/widgets/expanded_list_tile.dart';
import 'package:credo_p2p/features/home/core/widgets/hint_widget.dart';
import 'package:credo_p2p/features/home/core/widgets/loan_info.dart';
import 'package:credo_p2p/features/home/core/widgets/money_banner.dart';
import 'package:credo_p2p/features/home/core/widgets/round_button_enable_widget.dart';
import 'package:credo_p2p/features/home/core/widgets/upper_app_bar_widget.dart';
import 'package:credo_p2p/features/home/receive_loan/create_loan/data/enums.dart';
import 'package:flutter/material.dart';

class ProvideLoanScreen extends StatefulWidget {
  const ProvideLoanScreen({Key? key}) : super(key: key);

  @override
  _ProvideLoanScreenState createState() => _ProvideLoanScreenState();
}

class _ProvideLoanScreenState extends State<ProvideLoanScreen> {
  bool checkEnabled = false;
  bool showHint = false;
  ExpandedItem? month;
  ExpandedItem? moneySchedule;
  @override
  void initState() {
    super.initState();
    moneySchedule = ExpandedItem(
      value: 'Раз в месяц',
      key: MoneySchedule.onTimeInAMonth,
    );
    month = ExpandedItem(
      key: Months.six,
      value: 'На 6 месяцев',
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: UpperAppBarWidget(
        onArrowBack: () {
          Navigator.of(context).pop();
        },
        loanInfo: 'Итоговая сумма займа',
        money: '291 000р',
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: const EdgeInsets.only(
              top: 23,
              left: 20,
              right: 20,
              bottom: 100,
            ),
            children: [
              const MoneyBanner(
                title: 'Сумма займа:',
                subtitle: '200 000р',
              ),
              const SizedBox(
                height: 6,
              ),
              ExpandedListTile(
                title: 'Срок:',
                item: month!,
                items: [
                  ExpandedItem(
                    key: Months.six,
                    value: 'На 6 месяцев',
                  ),
                  ExpandedItem(
                    key: Months.four,
                    value: 'На 4 месяцев',
                  ),
                  ExpandedItem(
                    key: Months.two,
                    value: 'На 2 месяцев',
                  ),
                ],
                onTap: (e) {
                  setState(() {
                    month = e;
                  });
                },
              ),
              const SizedBox(
                height: 6,
              ),
              ExpandedListTile(
                title: 'График выплат:',
                item: moneySchedule!,
                items: [
                  ExpandedItem(
                    key: MoneySchedule.onTimeInAMonth,
                    value: 'Раз в месяц',
                  ),
                  ExpandedItem(
                    key: MoneySchedule.oneTimeInAWeek,
                    value: 'Раз в неделю',
                  ),
                  ExpandedItem(
                    key: MoneySchedule.oneTimeInTwoDays,
                    value: 'Раз в два дня',
                  ),
                ],
                onTap: (e) {
                  setState(() {
                    moneySchedule = e;
                  });
                },
              ),
              const SizedBox(
                height: 6,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showHint = !showHint;
                  });
                },
                child: const MoneyBanner(
                  title: 'Процентная ставка:',
                  subtitle: '5%',
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              HintWidget(
                hintText: 'Среднее значение по рынку: ',
                percent: '10%',
                show: showHint,
              ),
              const LoanInfo(
                title: 'Ваш займ',
                data: [
                  {'Сумма займа': '200 000р'},
                  {'Процент по займу в день / год': '5 % в день'},
                  {'Сумма заёмщику (с уч. комиссии)': '291 000 р'},
                  {'Сумма к возврату (с уч. комиссии)': '291 000 р'},
                  {'Прибыль по займу в руб.': '91 000 р'},
                  {'Прибыль по займу в % / год': '10 %'},
                ],
              ),
              const SizedBox(height: 16),
              const DismissableBanner(
                text:
                    'Вы получите уведомление, как только заёмщик выберет Вашу заявку. Снизить риски можно, выдавая займы большему количеству заёмщиков, тем самым сокращая риск невозвратов и просрочек, диверсифицируя свой кредитный портфель и получая больше прибыли. Создайте ещё заявки!',
              ),
              CheckBoxWidget(
                isEnabled: checkEnabled,
                onPressed: () {
                  setState(() {
                    checkEnabled = !checkEnabled;
                  });
                },
                text: 'Я согласен с договором...',
              ),
            ],
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RoundButtonEnableWidget(
                title: 'Отправить заявку',
                enabled: !checkEnabled,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
