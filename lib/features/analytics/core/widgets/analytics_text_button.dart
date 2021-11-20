import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyticsTextButton extends StatefulWidget {
  final String title;
  final Function() onTap;
  const AnalyticsTextButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  _AnalyticsTextButtonState createState() => _AnalyticsTextButtonState();
}

class _AnalyticsTextButtonState extends State<AnalyticsTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: kBlack,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(
              CupertinoIcons.forward,
              color: kViolet,
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}
