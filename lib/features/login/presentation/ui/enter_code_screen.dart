import 'package:credo_p2p/core/style/colors.dart';
import 'package:credo_p2p/core/widgets/app_bar_widget.dart';
import 'package:credo_p2p/features/login/presentation/ui/widgets/pinput_widget.dart';
import 'package:flutter/material.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({Key? key}) : super(key: key);

  @override
  _EnterCodeScreenState createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBarWidget(
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Введите код',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Введите код, который мы  отправили Вам на номер телефона',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 12),
            PinputWidget(
              controller: controller,
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'Повторный код можно отправить через 58 сек',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
