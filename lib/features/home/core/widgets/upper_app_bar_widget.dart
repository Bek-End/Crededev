import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpperAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Function() onArrowBack;
  final String loanInfo;
  final String money;
  const UpperAppBarWidget({
    Key? key,
    required this.onArrowBack,
    required this.loanInfo,
    required this.money,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      decoration: const BoxDecoration(
        color: kDarkBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Stack(
            children: [
              TextButton(
                onPressed: onArrowBack,
                style: TextButton.styleFrom(
                  primary: kDarkGrey,
                  minimumSize: Size.zero,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(8),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: SvgPicture.asset(
                  'assets/arrow_back_white.svg',
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    children: [
                      Text(
                        loanInfo,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kWhite,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        money,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: kWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(156);
}
