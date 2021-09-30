import 'package:credo_p2p/core/style/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicatorWidget extends StatefulWidget {
  final int dotsCount;
  final PageController controller;
  const DotsIndicatorWidget({
    Key? key,
    required this.dotsCount,
    required this.controller,
  }) : super(key: key);

  @override
  State<DotsIndicatorWidget> createState() => _DotsIndicatorWidgetState();
}

class _DotsIndicatorWidgetState extends State<DotsIndicatorWidget> {
  double currentPosition = 0;
  @override
  void initState() {
    widget.controller.addListener(
      () {
        setState(
          () {
            currentPosition = widget.controller.page!;
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: widget.dotsCount,
      position: currentPosition,
      decorator: DotsDecorator(
        size: const Size(41, 3),
        activeSize: const Size(41, 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        activeColor: kViolet,
        color: kVioletPale,
        spacing: const EdgeInsets.all(8),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }
}
