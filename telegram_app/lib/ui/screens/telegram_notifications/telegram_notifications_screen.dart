import 'package:flutter/material.dart';
import 'package:telegram_app/ui/screens/telegram_notifications/widgets/group_notifications.dart';
import 'package:telegram_app/ui/screens/telegram_notifications/widgets/message_notifications.dart';
import 'package:telegram_app/ui/screens/telegram_notifications/widgets/show_notifications.dart';

class TelegramNotificationScreen extends StatelessWidget {
  const TelegramNotificationScreen({super.key});

  @override
 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          children: const [
            ShowNotificationsWidget(),
            MessageNotificationsWidget(),
            GroupNotificationsWidget(),
          ],
        ),
      ),
    ),
  );
}
}
