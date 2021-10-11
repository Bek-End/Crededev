import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String title;
  final bool enabled;
  final Function() onPressed;
  const OutlinedButtonWidget({
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: enabled
          ? Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 14,
              ),
              child: Text(
                title,
              ),
            )
          : const Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                ),
                child: SpinKitFadingCircle(
                  size: 24,
                  color: kViolet,
                ),
              ),
            ),
    );
  }
}
