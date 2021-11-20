import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_inprogress_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_pay_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_percent_list_tile.dart';
import 'package:credo_p2p/features/analytics/core/widgets/loan_unapproved_list_tile.dart';
import 'package:flutter/material.dart';

class AnalyticsAllLoansScreen extends StatefulWidget {
  const AnalyticsAllLoansScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsAllLoansScreenState createState() =>
      _AnalyticsAllLoansScreenState();
}

class _AnalyticsAllLoansScreenState extends State<AnalyticsAllLoansScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: 'Все займы',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          LoanPayListTile(
            leading: 'Займ от 12.02.21',
            date: '29.04.2021',
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanPercentListTile(
            leading: 'Займ от 12.02.21',
            percent: 25,
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanUnapprovedListTile(
            leading: 'Займ от 12.02.21',
            onPressed: () {},
          ),
          const SizedBox(
            height: 6,
          ),
          LoanInprogressListTile(
            leading: 'Займ от 12.02.21',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
