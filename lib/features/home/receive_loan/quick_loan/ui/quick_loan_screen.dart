import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/home/core/widgets/check_box_widget.dart';
import 'package:credo_p2p/core/widgets/dismissable_banner.dart';
import 'package:credo_p2p/core/widgets/info_list.dart';
import 'package:credo_p2p/features/home/core/widgets/round_button_enable_widget.dart';
import 'package:credo_p2p/features/home/core/widgets/upper_app_bar_widget.dart';
import 'package:flutter/material.dart';

class QuickLoanScreen extends StatefulWidget {
  const QuickLoanScreen({Key? key}) : super(key: key);

  @override
  _QuickLoanScreenState createState() => _QuickLoanScreenState();
}

class _QuickLoanScreenState extends State<QuickLoanScreen> {
  bool checkEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: UpperAppBarWidget(
        onArrowBack: () {
          Navigator.of(context).pop();
        },
        loanInfo: 'Займ от 12.02.21',
        money: '5 000р',
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: const EdgeInsets.only(
              top: 21,
              left: 20,
              right: 20,
            ),
            children: [
              const InfoList(
                title: 'Условия',
                data: [
                  {'Сумма возврата': '5 200р'},
                  {'Дата возврата': '26 мая 2021'},
                  {'Процентная ставка': '2 % в день'},
                ],
              ),
              const SizedBox(height: 23),
              const InfoList(
                title: 'Детальная информация',
                data: [
                  {'На руки': '5 200р'},
                  {'Комиссия': '200р'},
                  {'Сумма займа': '5 200р'},
                  {'Ставка в договоре': '2 % в день'},
                  {'Проценты по займу': '1 456р'},
                  {'Сумма возврата': '6 656р'},
                  {'Переплата (вкл. комиссию)': '1 656р'},
                  {'Напоминание': 'За 1 день'},
                ],
              ),
              const SizedBox(height: 20),
              const DismissableBanner(
                text:
                    'Вы получите уведомление, как только кредитор выберет Вашу заявку. Повысить интерес кредитора можно за счёт более интересного процента, а так же Вашего рейтинга, который формируется на основе анкетных данных и активности в сервисе.',
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
              padding: const EdgeInsets.only(left: 20,right: 20),
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
