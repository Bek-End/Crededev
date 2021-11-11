import 'package:credo_p2p/features/main_page/core/widgets/check_box_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/dismissable_banner.dart';
import 'package:credo_p2p/features/main_page/core/widgets/info_list.dart';
import 'package:credo_p2p/features/main_page/core/widgets/round_button_enable_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/upper_app_bar_widget.dart';
import 'package:flutter/material.dart';

class LendMoneyScreen extends StatefulWidget {
  const LendMoneyScreen({Key? key}) : super(key: key);

  @override
  _LendMoneyScreenState createState() => _LendMoneyScreenState();
}

class _LendMoneyScreenState extends State<LendMoneyScreen> {
  bool checkEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpperAppBarWidget(
        onArrowBack: () {
          Navigator.pop(context);
        },
        loanInfo: 'Сумма инвестиции',
        money: '291 000р',
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            padding: const EdgeInsets.only(
              top: 21,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            children: [
              const InfoList(
                title: 'Заемщик',
                data: [
                  {'Имя Фамилия': 'Дмитрий Попов'},
                  {'Возраст': '35 лет'},
                  {'Должность': 'Консультант-продавец'},
                  {'Рейтинг': '★5'}
                ],
              ),
              const SizedBox(height: 23),
              const InfoList(
                title: 'Детализация займа',
                data: [
                  {'Сумма займа': '291 000р'},
                  {'Прибыль': '8 520р'},
                  {'Ежемесячный возврат': '26 710р'},
                  {'Итоговая сумма': '326 230р'},
                ],
              ),
              const SizedBox(height: 23),
              const InfoList(
                title: 'Информация',
                data: [
                  {'Ставка': '5 % в день'},
                  {'План возврата': 'Ежемесячно'},
                  {'Срок': 'На 12 месяцев'},
                  {'Дата возврата': 'До 08 мая 2022'},
                  {'Цель': 'Покупка машины'},
                ],
              ),
              const SizedBox(height: 20),
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
                title: 'Предоставить займ',
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
