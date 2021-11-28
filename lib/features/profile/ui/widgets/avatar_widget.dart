import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarWidget extends StatelessWidget {
  final String title;
  final int rating;

  const AvatarWidget({
    Key? key,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset('assets/avatar/avatar.png',height: 51,width: 51,),
              ),
              Positioned(
                left: 40,
                child: SvgPicture.asset('assets/avatar/check.svg'),
              ),
              Positioned(
                top: 13,
                child: SvgPicture.asset('assets/avatar/star.svg'),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: kBlack,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Рейтинг: ★$rating',
              style: const TextStyle(
                color: kBlackLight,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
