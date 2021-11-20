import 'package:flutter/material.dart';

import 'money_card_widget.dart';

class LoanConsole extends StatefulWidget {
  final List<Map<String, String>> data;
  final bool show;
  const LoanConsole({
    Key? key,
    required this.data,
    required this.show,
  }) : super(key: key);

  @override
  _LoanConsoleState createState() => _LoanConsoleState();
}

class _LoanConsoleState extends State<LoanConsole> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    if (!visibility && widget.show) {
      setState(() {
        visibility = true;
      });
    }
    return AnimatedOpacity(
      opacity: widget.show ? 1 : 0,
      onEnd: () {
        if (!widget.show) {
          setState(() {
            visibility = false;
          });
        }
      },
      duration: const Duration(milliseconds: 500),
      child: Visibility(
        visible: visibility,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: MoneyCardWidget(
                    title: widget.data[0].values.toList()[0],
                    subtitle: widget.data[0].keys.toList()[0],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MoneyCardWidget(
                    title: widget.data[1].values.toList()[0],
                    subtitle: widget.data[1].keys.toList()[0],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: MoneyCardWidget(
                    title: widget.data[2].values.toList()[0],
                    subtitle: widget.data[2].keys.toList()[0],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MoneyCardWidget(
                    title: widget.data[3].values.toList()[0],
                    subtitle: widget.data[3].keys.toList()[0],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
