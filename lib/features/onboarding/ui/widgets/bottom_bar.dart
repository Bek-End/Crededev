import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/outlined_button.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String title;
  const BottomBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 17,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        color: kGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SafeArea(
        child: OutlinedButtonWidget(
          onPressed: () {},
          title: title,
        ),
      ),
    );
  }
}
