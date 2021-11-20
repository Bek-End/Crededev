import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HideWidget extends StatefulWidget {
  final String title;
  final Function(bool show) toogle;
  const HideWidget({
    Key? key,
    required this.title,
    required this.toogle,
  }) : super(key: key);

  @override
  _HideWidgetState createState() => _HideWidgetState();
}

class _HideWidgetState extends State<HideWidget> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  bool show = true;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(60, 17),
      ),
      onPressed: () {
        if (_controller.isCompleted) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
        show = !show;
        widget.toogle(show);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          RotationTransition(
            turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
            child: SvgPicture.asset('assets/Mask.svg'),
          ),
        ],
      ),
    );
  }
}
