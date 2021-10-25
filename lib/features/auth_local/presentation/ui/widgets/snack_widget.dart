import 'package:flutter/material.dart';

SnackBar snackWidget({
  required final String content,
  required final String label,
  required final Function onPressed,
}) =>
    SnackBar(
      content: Text(content),
      action: SnackBarAction(
        label: label,
        onPressed: () {},
      ),
    );
