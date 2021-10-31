import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RoundButtonLightWidget extends StatelessWidget {
  final String title;
  final bool enabled;
  final Function() onPressed;
  const RoundButtonLightWidget({
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
        primary: kVioletPale,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPrimary: kViolet,
        elevation: 0,
      ),
      child: enabled
          ? Padding(
              padding: const EdgeInsets.only(
                top: 14,
                bottom: 14,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: kViolet,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
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
