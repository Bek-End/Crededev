import 'dart:ui';
import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/features/home/core/data/models/filter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterRatingButton extends StatelessWidget {
  final Function(Rating rating) onPressed;
  final String title;
  final Rating groupValue;
  final Rating value;
  const FilterRatingButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.groupValue,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: groupValue == value ? kBlue : kVioletPale,
        padding: EdgeInsets.zero,
        onPrimary: kBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      onPressed: () {
        if (groupValue == value) {
          onPressed(Rating.none);
        } else {
          onPressed(value);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/star.svg'),
          const SizedBox(
            width: 2,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
