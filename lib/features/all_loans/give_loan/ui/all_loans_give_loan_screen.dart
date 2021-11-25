import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/all_loans_expanded_tile.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/bottom_sheet_button.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/chart_color_info.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/custom_info_bottom_sheet.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/expanded_list.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/money_info_list_tile.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/money_plus.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/stacked_column_chart.dart';
import 'package:credo_p2p/features/home/core/widgets/expanded_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'widgets/sort_bottom_sheet_widget.dart';

enum AllLoansMonths {
  march,
  may,
  june,
  july,
}

class AllLoansGiveLoanScreen extends StatefulWidget {
  const AllLoansGiveLoanScreen({Key? key}) : super(key: key);

  @override
  _AllLoansGiveLoanScreenState createState() => _AllLoansGiveLoanScreenState();
}

class _AllLoansGiveLoanScreenState extends State<AllLoansGiveLoanScreen> {
  ExpandedItem item = ExpandedItem(
    value: 'Март',
    key: AllLoansMonths.march,
  );
  final List<ChartData> chartData = [
    ChartData('Май', 20, 10, 14),
    ChartData('Июнь', 11, 11, 18),
    ChartData('Июль', 5, 10, 12),
    ChartData('Авг', 23, 16, 18),
    ChartData('Сен', 16, 10, 15),
    ChartData('Окт', 6, 16, 18),
    ChartData('Дек', 5, 10, 15),
  ];
  final TooltipBehavior tooltipBehavior = TooltipBehavior(
    enable: true,
    duration: 0,
    shouldAlwaysShow: false,
    color: kBlack,
    decimalPlaces: 0,
    header: 'Рубли',
    tooltipPosition: TooltipPosition.pointer,
    textStyle: const TextStyle(
      color: kWhite,
      fontSize: 8,
      fontWeight: FontWeight.w600,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kVioletVeryPale,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      'Общий доход:',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: MoneyPlus(
                      money: '15 000р',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  StackedColumnChart(
                    chartData: chartData,
                    tooltipBehavior: tooltipBehavior,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ChartColorInfo(
                        title: 'Прибыль',
                        color: kViolet,
                      ),
                      ChartColorInfo(
                        title: 'Возвращено ',
                        color: kDarkBlue,
                      ),
                      ChartColorInfo(
                        title: 'Выдано займов',
                        color: kChartBlue,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: AllLoansExpandedtile(
                      infoList: [
                        {"Всего займов": "70 000р"},
                        {"Всего прибыли": "35 000р"},
                        {"Всего просрочек": "3"},
                        {"Средний % прибыли": "10%"},
                        {"Средний срок займа": "6 месяцев"},
                      ],
                      title: 'Итого за период',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInfoBottomSheet(
                    longInfo:
                        'Выдавая займы большему количеству заёмщиков Вы тем самым сокращаете риск невозвратов и просрочек, диверсифицируя свой кредитный портфель и получая больше прибыли.',
                    onPressed: () async {
                      final res =
                          await showModalBottomSheet<AllLoansGiveFilter>(
                        context: context,
                        backgroundColor: kWhite,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        builder: (context) =>
                            const AllLoansFilterGiveBottomSheetWidget(),
                      );
                    },
                    infoList: const [
                      MoneyInfoListTile(
                        isOk: true,
                        title: 'Выплачено',
                        subtitle: 'Дата: 01.05.2021',
                        trailing: '10 000р',
                      ),
                      MoneyInfoListTile(
                        isOk: false,
                        title: 'Просрочено',
                        subtitle: 'Дата: 01.05.2021',
                        trailing: '10 000р',
                      ),
                      MoneyInfoListTile(
                        isOk: true,
                        title: 'Выплачена задолженность',
                        subtitle: 'Дата: 01.05.2021',
                        trailing: '10 000р',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 120,
                  padding: const EdgeInsets.only(
                    right: 20,
                    top: 30,
                  ),
                  child: ExpandedList(
                    items: [
                      ExpandedItem(value: 'Июль', key: AllLoansMonths.july),
                      ExpandedItem(value: 'Июнь', key: AllLoansMonths.june),
                      ExpandedItem(value: 'Март', key: AllLoansMonths.march),
                      ExpandedItem(value: 'Май', key: AllLoansMonths.may),
                    ],
                    item: item,
                    onTap: (e) {
                      setState(() {
                        item = e;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
