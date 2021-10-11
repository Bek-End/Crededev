import 'package:credo_p2p/core/style/colors.dart';
import 'package:flutter/material.dart';

final SnackBar noInternetSnackbar = SnackBar(
  backgroundColor: kBlack,
  elevation: 2,
  content: const Text(
    'Отсутсвует подключение к сети :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: kViolet,
    onPressed: () {},
  ),
);

final SnackBar wrongCodeSnackBar = SnackBar(
  backgroundColor: kBlack,
  elevation: 2,
  content: const Text(
    'Неправильный код :( ',
  ),
  action: SnackBarAction(
    label: 'Скрыть',
    textColor: kViolet,
    onPressed: () {},
  ),
);
