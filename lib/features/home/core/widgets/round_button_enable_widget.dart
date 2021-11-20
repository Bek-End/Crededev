import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RoundButtonEnableWidget extends StatelessWidget {
  final String title;
  final bool enabled;
  final Function() onPressed;
  const RoundButtonEnableWidget({
    Key? key,
    required this.title,
    required this.enabled,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: kWhite,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        primary: kViolet,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          bottom: 14,
        ),
        child: Text(
          title,
        ),
      ),
    );
  }
}
