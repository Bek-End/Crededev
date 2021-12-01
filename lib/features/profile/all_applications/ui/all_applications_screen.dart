import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/core/widgets/receive_loan_card_widget.dart';
import 'package:flutter/material.dart';

class AllApplicationsScreen extends StatefulWidget {
  const AllApplicationsScreen({Key? key}) : super(key: key);

  @override
  _AllApplicationsScreenState createState() => _AllApplicationsScreenState();
}

class _AllApplicationsScreenState extends State<AllApplicationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'Все заявки',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: List.generate(
          10,
          (i) => Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 4),
            child: ReceiveLoanCardWidget(
              title: 'Займ от 12.02.21',
              money: '5000р',
              percent: '2% в день',
              durationInDays: 'на 14 дней',
              deadline: 'погашение 21.05.21',
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
