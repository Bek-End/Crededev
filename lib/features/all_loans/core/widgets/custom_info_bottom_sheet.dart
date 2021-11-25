import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/dismissable_banner.dart';
import 'package:credo_p2p/features/all_loans/core/widgets/money_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomInfoBottomSheet extends StatefulWidget {
  final List<MoneyInfoListTile> infoList;
  final String longInfo;
  final Function() onPressed;
  const CustomInfoBottomSheet({
    Key? key,
    required this.infoList,
    required this.longInfo,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomInfoBottomSheet> createState() => _CustomInfoBottomSheetState();
}

class _CustomInfoBottomSheetState extends State<CustomInfoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 3.8,
                width: 36,
                decoration: BoxDecoration(
                  color: kRectangleGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Детальная информация',
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: widget.onPressed,
                    style: TextButton.styleFrom(
                      primary: kBlack,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: const CircleBorder(),
                      minimumSize: Size.zero,
                    ),
                    child: SvgPicture.asset(
                      'assets/settings.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: DismissableBanner(
                  text: widget.longInfo,
                ),
              ),
            ] +
            widget.infoList,
      ),
    );
  }
}
