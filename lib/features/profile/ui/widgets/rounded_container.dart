import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const RoundedContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 26,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: padding,
      child: child,
    );
  }
}
