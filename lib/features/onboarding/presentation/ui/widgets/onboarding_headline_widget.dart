import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingHeadline extends StatelessWidget {
  final String svgPicPath;
  final String title;
  final String info;
  const OnboardingHeadline({
    Key? key,
    required this.svgPicPath,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(svgPicPath)),
            Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              info,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
