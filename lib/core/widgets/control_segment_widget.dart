import 'package:credo_p2p/core/sliding_segmented_control_modified/sliding_segmented_control_modified.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlSegmentWidget extends StatefulWidget
    implements PreferredSizeWidget {
  final String receiveLoan;
  final String giveLoan;

  ///[val] can be either 0:receiveLoan or 1:giveLoan
  final Function(int? val) onValueCnanged;
  const ControlSegmentWidget({
    Key? key,
    required this.receiveLoan,
    required this.giveLoan,
    required this.onValueCnanged,
  }) : super(key: key);

  @override
  _ControlSegmentWidgetState createState() => _ControlSegmentWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ControlSegmentWidgetState extends State<ControlSegmentWidget> {
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
        child: SizedBox(
          width: double.infinity,
          child: CupertinoSlidingSegmentedControlModified<int>(
            groupValue: groupValue,
            backgroundColor: kBlueLight,
            thumbColor: kBlue,
            children: {
              0: buildSegment(widget.receiveLoan),
              1: buildSegment(widget.giveLoan)
            },
            padding: EdgeInsets.zero,
            onValueChanged: (value) {
              setState(() {
                groupValue = value;
              });
              widget.onValueCnanged(value);
            },
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 7,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: kBlack,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
