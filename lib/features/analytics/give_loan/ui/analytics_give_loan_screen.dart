import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/info_list.dart';
import 'package:credo_p2p/features/analytics/all_investments/ui/analytics_all_investments_screen.dart';
import 'package:credo_p2p/features/analytics/core/widgets/analytics_text_button.dart';
import 'package:credo_p2p/features/analytics/core/widgets/circular_analytical_indicator.dart';
import 'package:credo_p2p/features/analytics/core/widgets/rounded_info_toast.dart';
import 'package:flutter/material.dart';

class AnalyticsGiveLoanScreen extends StatefulWidget {
  const AnalyticsGiveLoanScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsGiveLoanScreenState createState() =>
      _AnalyticsGiveLoanScreenState();
}

class _AnalyticsGiveLoanScreenState extends State<AnalyticsGiveLoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: const BoxDecoration(
              color: kVioletVeryPale,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 19,
                ),
                const Center(
                  child: CircularAnalyticalChart(
                    greyPercent: 25,
                    violetPercent: 50,
                    bluePercent: 25,
                    title: 'Ближайшие\nпоступления',
                    money: '29 000р',
                    date: '23 мая 2021 г',
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: const [
                    RoundedInfoToast(
                      color: kDarkBlue,
                      leading: 'Выдано займов',
                      trailing: '58 000р',
                      textColor: kWhite,
                    ),
                    RoundedInfoToast(
                      color: kChartBlue,
                      leading: 'Прибыль по займам',
                      trailing: '10 000р',
                      textColor: kBlack,
                    ),
                    RoundedInfoToast(
                      color: kViolet,
                      leading: 'Просрочено',
                      trailing: '29 000р',
                      textColor: kWhite,
                    ),
                    RoundedInfoToast(
                      color: kBlueLight,
                      leading: 'Ср. процент прибыли',
                      trailing: '10 %',
                      textColor: kBlack,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: InfoList(
              title: 'Детальная информация',
              data: [
                {'Итого инвестиций на сумму': '330 000р'},
                {'Сред. процентная ставка % в годовых': '2% в день'},
                {'Средняя сумма займа': '200 000р'},
                {'Средняя сумма выплат в месяц': '29 000р'},
              ],
            ),
          ),
          AnalyticsTextButton(
            title: 'Все инвестиции',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnalyticsAllInvestmentsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
