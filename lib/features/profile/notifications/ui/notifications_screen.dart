import 'package:credo_p2p/core/widgets/app_bar_with_title.dart';
import 'package:credo_p2p/features/profile/notifications/ui/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTitle(
        onPressed: () {
          Navigator.pop(context);
        },
        title: 'Уведомления',
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, i) => Container(
          margin: const EdgeInsets.only(bottom: 6,),
          child: const NotificationWidget(
            title: 'P2P-кредитование',
            time: 'Сейчас',
            body:
                'Необходимо вернуть займ №1 в течение 2 дней, иначе ваш займ будет просрочен.',
          ),
        ),
      ),
    );
  }
}
