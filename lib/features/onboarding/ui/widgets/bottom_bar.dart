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
        bottom: 22,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: kGrey,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: OutlinedButtonWidget(
        onPressed: () {},
        title: title,
      ),
    );
  }
}
