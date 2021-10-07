import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  final Function() onPressed;

  const ForgotPasswordButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Забыли PIN-код?',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
