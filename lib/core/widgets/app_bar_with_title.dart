import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'arrow_back_button.dart';

class AppBarWithTitle extends StatelessWidget implements PreferredSizeWidget {
  final Function() onPressed;
  final String title;
  const AppBarWithTitle({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: kTrans,
        elevation: 0,
        leading: ArrowBackButton(
          onPressed: onPressed,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: kBlack,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
