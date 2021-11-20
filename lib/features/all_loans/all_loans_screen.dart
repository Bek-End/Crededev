import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class AllLoansScreen extends StatelessWidget {
  const AllLoansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Все займы',
          style: TextStyle(
            color: kViolet,
          ),
        ),
      ),
    );
  }
}
