import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArrowBackButton extends StatelessWidget {
  final Function() onPressed;
  const ArrowBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashColor: kGrey,
      onPressed: onPressed,
      icon: SvgPicture.asset('assets/login/arrow_back.svg'),
    );
  }
}
