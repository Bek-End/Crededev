import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/features/profile/add_card/ui/add_card_screen.dart';
import 'package:credo_p2p/features/profile/my_cards/ui/widgets/bottom_info_sheet.dart';
import 'package:credo_p2p/features/profile/my_cards/ui/widgets/custom_floating_action_button.dart';
import 'package:credo_p2p/core/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCardsScreen extends StatefulWidget {
  const MyCardsScreen({Key? key}) : super(key: key);

  @override
  _MyCardsScreenState createState() => _MyCardsScreenState();
}

class _MyCardsScreenState extends State<MyCardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kVioletVeryPale,
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'Мои карты',
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                CustomFloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddCardScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 17,
                ),
                SvgPicture.asset('assets/debit_card.svg'),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const BottomInfoSheet(
            transactions: [
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
              TransactionListTile(
                title: 'Процент от займа',
                subtitle: 'Дата: 11.05.2021',
                trailing: '+3 000р',
                transaction: Transaction.percent,
              ),
              TransactionListTile(
                title: 'Инвестиция ',
                subtitle: 'Дата: 11.05.2021',
                trailing: '-33 000р',
                transaction: Transaction.investment,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
