import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/arrow_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWithTitleAndActions extends StatelessWidget
    implements PreferredSizeWidget {
  final Function() onPressed;
  final String title;
  final Function() onSettingsPressed;
  const AppBarWithTitleAndActions({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.onSettingsPressed,
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
        actions: [
          IconButton(
            onPressed: onSettingsPressed,
            padding: EdgeInsets.zero,
            splashColor: kGrey,
            icon: SvgPicture.asset('assets/settings.svg'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
