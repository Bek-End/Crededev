import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/features/main_page/core/widgets/hide_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/loan_button_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/loan_console.dart';
import 'package:credo_p2p/features/main_page/give_loan/lend_money/ui/lend_money_screen.dart';
import 'package:credo_p2p/features/main_page/give_loan/provide_loan/ui/provide_loan_screen.dart';
import 'package:credo_p2p/features/main_page/receive_loan/receive_loan_main_page/data/filter_model.dart';
import 'package:credo_p2p/features/main_page/receive_loan/receive_loan_main_page/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/give_loan_card_widget.dart';
import 'widgets/sort_bottom_sheet/bottom_sheet_button.dart';
import 'widgets/sort_bottom_sheet/sort_bottom_sheet_widget.dart';

class GiveLoanScreen extends StatefulWidget {
  const GiveLoanScreen({Key? key}) : super(key: key);

  @override
  _GiveLoanScreenState createState() => _GiveLoanScreenState();
}

class _GiveLoanScreenState extends State<GiveLoanScreen>
    with AutomaticKeepAliveClientMixin {
  bool showConsole = true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: const EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
        bottom: 5,
      ),
      children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Мои инвестиции',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                HideWidget(
                  title: 'Свернуть',
                  toogle: (e) {
                    setState(() {
                      showConsole = e;
                    });
                  },
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            LoanConsole(
              data: const [
                {'Инвестировано': '291 000р'},
                {'Будущая выплата': '29 000р'},
                {'Выплачено': '0р'},
                {'Просрочено': '0р'},
              ],
              show: showConsole,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: RoundButtonWidget(
                title: 'Предоставить займ',
                enabled: true,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProvideLoanScreen(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Список займов',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: LoanButtonWidget(
                    title: 'Сортировка',
                    iconAssetPath: 'assets/sort.svg',
                    onPressed: () async {
                      final sort = await showModalBottomSheet<GiveSortEnum>(
                        context: context,
                        backgroundColor: kWhite,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        builder: (context) => const SortBottomSheetWidget(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: LoanButtonWidget(
                    title: 'Фильтры',
                    iconAssetPath: 'assets/filter.svg',
                    onPressed: () async {
                      final filter = await showModalBottomSheet<FilterModel>(
                        context: context,
                        backgroundColor: kWhite,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        builder: (context) => Wrap(
                          children: const [
                            FilterBottomSheetWidget(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
          ] +
          List.generate(
            10,
            (i) => Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 4),
              child: GiveLoanCardWidget(
                title: 'Ксения Трефилова, 22 года',
                money: '291 200 р',
                percent: '2% в день',
                durationInDays: 'на 6 месяцев',
                rating: '4,7',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LendMoneyScreen(),
                    ),
                  );
                },
                deadLine: '29.04.2021',
                income: '39 232 р',
                subtitle: 'Официант',
              ),
            ),
          ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
