import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MoneyCardShimmerWidget extends StatelessWidget {
  const MoneyCardShimmerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: kVioletVeryPale,
      highlightColor: kWhite,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 136,
          minHeight: 63,
        ),
        decoration: BoxDecoration(
          color: kVioletVeryPale,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
