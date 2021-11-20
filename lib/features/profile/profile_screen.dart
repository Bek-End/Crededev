import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Профиль',
          style: TextStyle(
            color: kViolet,
          ),
        ),
      ),
    );
  }
}
