import 'dart:async';

import 'package:credo_p2p/core/logger/logger_impl.dart';
import 'package:flutter/material.dart';

class RetryCodeWidget extends StatefulWidget {
  final Function() onTap;
  final String title;
  final String sec;
  final String buttonTitle;
  const RetryCodeWidget({
    Key? key,
    required this.onTap,
    required this.title,
    required this.sec,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  State<RetryCodeWidget> createState() => _RetryCodeWidgetState();
}

class _RetryCodeWidgetState extends State<RetryCodeWidget> {
  int counter = 60;
  late Stream counterStream;
  late StreamSubscription counterListener;
  @override
  void initState() {
    counterStream = Stream.periodic(
      const Duration(seconds: 1),
      (a) {
        setState(
          () {
            counter--;
          },
        );
      },
    );
    counterListener = counterStream.listen((event) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (counter <= 0) {
      counter = 60;
      counterListener.pause();
      return TextButton(
        onPressed: () {
          logger.i("TAPPED");
          widget.onTap();
          counterListener.resume();
        },
        child: Text(
          widget.buttonTitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      );
    } else {
      return Text(
        '${widget.title} $counter ${widget.sec}',
        style: Theme.of(context).textTheme.subtitle1,
      );
    }
  }

  @override
  void dispose() {
    counterListener.cancel();
    super.dispose();
  }
}
