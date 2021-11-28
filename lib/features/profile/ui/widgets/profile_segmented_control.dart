import 'package:credo_p2p/core/sliding_segmented_control_modified/sliding_segmented_control_modified.dart';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSegmentedControl extends StatefulWidget {
  final String services;
  final String info;
  final String settings;

  ///[val] can be either 0:receiveLoan or 1:giveLoan
  final Function(int? val) onValueCnanged;
  const ProfileSegmentedControl({
    Key? key,
    required this.services,
    required this.info,
    required this.settings,
    required this.onValueCnanged,
  }) : super(key: key);

  @override
  _ProfileSegmentedControlState createState() =>
      _ProfileSegmentedControlState();
}

class _ProfileSegmentedControlState extends State<ProfileSegmentedControl> {
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
            backgroundColor: kChartBlue,
            thumbColor: kViolet,
            children: {
              0: BuildSegment(
                text: widget.services,
                value: 0,
                groupValue: groupValue!,
              ),
              1: BuildSegment(
                text: widget.info,
                value: 1,
                groupValue: groupValue!,
              ),
              2: BuildSegment(
                text: widget.settings,
                value: 2,
                groupValue: groupValue!,
              ),
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
}

class BuildSegment extends StatelessWidget {
  final String text;
  final int value;
  final int groupValue;
  const BuildSegment({
    Key? key,
    required this.text,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 7,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: value == groupValue ? kWhite : kBlack,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
