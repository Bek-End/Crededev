import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllLoansTextButton extends StatefulWidget {
  final Function() onPressed;
  final String title;
  const AllLoansTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  State<AllLoansTextButton> createState() => _AllLoansTextButtonState();
}

class _AllLoansTextButtonState extends State<AllLoansTextButton> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Row(
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              color: kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            width: 6,
          ),
        ],
      ),
    );
  }
}
