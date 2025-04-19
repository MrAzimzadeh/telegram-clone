import 'package:flutter/material.dart';
import 'package:telegram_app/ui/screens/telegram_notifications/telegram_notifications_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Clone',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: TelegramNotificationScreen(),
    );
  }
}
