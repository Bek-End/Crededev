import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/round_button.dart';
import 'package:credo_p2p/features/main_page/core/widgets/hide_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/loan_button_widget.dart';
import 'package:credo_p2p/features/main_page/core/widgets/money_card_widget.dart';
import 'package:credo_p2p/features/main_page/give_loan/widgets/give_loan_card_widget.dart';
import 'package:credo_p2p/features/main_page/give_loan/widgets/sort_bottom_sheet/bottom_sheet_button.dart';
import 'package:credo_p2p/features/main_page/give_loan/widgets/sort_bottom_sheet/sort_bottom_sheet_widget.dart';
import 'package:credo_p2p/features/main_page/receive_loan/data/filter_model.dart';
import 'package:credo_p2p/features/main_page/receive_loan/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:credo_p2p/features/main_page/receive_loan/widgets/sort_bottom_sheet/bottom_sheet_button.dart';
import 'package:flutter/material.dart';

class GiveLoanScreen extends StatefulWidget {
  const GiveLoanScreen({Key? key}) : super(key: key);

  @override
  _GiveLoanScreenState createState() => _GiveLoanScreenState();
}

class _GiveLoanScreenState extends State<GiveLoanScreen> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        top: 5,
        left: 20,
        right: 20,
      ),
      children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Мои инвестиции',
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                HideWidget(title: 'Свернуть')
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: MoneyCardWidget(
                        title: "291 000р",
                        subtitle: "Инвестировано",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MoneyCardWidget(
                        title: "29 000р",
                        subtitle: "Будущая выплата",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: MoneyCardWidget(
                        title: "0р",
                        subtitle: "Выплачено",
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MoneyCardWidget(
                        title: "0р",
                        subtitle: "Просрочено",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: RoundButtonWidget(
                title: 'Предоставить займ',
                enabled: true,
                onPressed: () {},
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
                onPressed: () {},
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
