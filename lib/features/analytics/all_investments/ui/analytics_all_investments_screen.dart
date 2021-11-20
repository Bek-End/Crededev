import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_inprogress_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_pay_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_percent_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_unapproved_list_tile.dart';
import 'package:flutter/material.dart';

class AnalyticsAllInvestmentsScreen extends StatefulWidget {
  const AnalyticsAllInvestmentsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsAllInvestmentsScreenState createState() =>
      _AnalyticsAllInvestmentsScreenState();
}

class _AnalyticsAllInvestmentsScreenState extends State<AnalyticsAllInvestmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: 'Все инвестиции',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          LoanPayListTile(
            leading: 'Инвестиция №1',
            date: '29.04.2021',
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanPercentListTile(
            leading: 'Инвестиция №2',
            percent: 25,
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanUnapprovedListTile(
            leading: 'Инвестиция №3',
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanInprogressListTile(
            leading: 'Инвестиция №4',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
