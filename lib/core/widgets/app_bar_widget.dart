import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/login/presentation/ui/widgets/arrow_back_button.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Function() onPressed;
  const AppBarWidget({
    Key? key,
    required this.onPressed,
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
