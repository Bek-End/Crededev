import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class AnimatedTextHideButton extends StatefulWidget {
  final String title;
  final Function(bool show) toogle;
  final bool mini;

  const AnimatedTextHideButton({
    Key? key,
    required this.title,
    required this.toogle,
    required this.mini,
  }) : super(key: key);

  @override
  _AnimatedTextHideButtonState createState() => _AnimatedTextHideButtonState();
}

class _AnimatedTextHideButtonState extends State<AnimatedTextHideButton>
    with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.only(left: 3, right: 3),
      ),
      onPressed: () {
        widget.toogle(controller.isCompleted);
        if (controller.isCompleted) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: widget.mini
                ? const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  )
                : const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
          ),
          if (widget.mini)
            const SizedBox(
              width: 3,
            )
          else
            const SizedBox(
              width: 6,
            ),
          RotationTransition(
            turns: Tween(begin: 0.0, end: 0.5).animate(controller),
            child: SvgPicture.asset(
              'assets/Mask.svg',
              height: widget.mini ? 3 : 5,
              width: widget.mini ? 5 : 10,
            ),
          ),
        ],
      ),
    );
  }
}
