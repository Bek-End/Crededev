import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const OutlinedButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 14,
          bottom: 14,
        ),
        child: Text(
          title,
        ),
      ),
    );
  }
}
