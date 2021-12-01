import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Function() onPressed;
  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: FloatingActionButton(
        backgroundColor: kChartBlue,
        elevation: 0,
        onPressed: onPressed,
        child: const Icon(
          Icons.add_rounded,
          color: kViolet,
        ),
      ),
    );
  }
}
