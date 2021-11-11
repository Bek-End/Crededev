import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HintWidget extends StatefulWidget {
  final String hintText;
  final String percent;
  final bool show;
  const HintWidget({
    Key? key,
    required this.hintText,
    required this.percent,
    required this.show,
  }) : super(key: key);

  @override
  State<HintWidget> createState() => _HintWidgetState();
}

class _HintWidgetState extends State<HintWidget> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    if (!visibility && widget.show) {
      setState(() {
        visibility = true;
      });
    }
    return AnimatedOpacity(
      opacity: widget.show ? 1 : 0,
      onEnd: () {
        if (!widget.show) {
          setState(() {
            visibility = false;
          });
        }
      },
      duration: const Duration(milliseconds: 500),
      child: Visibility(
        visible: visibility,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/hint.svg',
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    widget.hintText,
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.percent,
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
