import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/ui/screens/appearance_screen/appearance_screen.dart';
import 'package:telegram_app/ui/screens/auth_screen/auth_screen.dart';
import 'package:telegram_app/ui/screens/languages_screen/languages_screen.dart';
import 'package:telegram_app/ui/screens/telegram_data_storage/telegram_data_storage_screen.dart';
import 'package:telegram_app/ui/screens/telegram_notifications/telegram_notifications_screen.dart';
import 'package:telegram_app/ui/screens/telegram_privacy_security/telegram_privacy_security_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Telegram Clone',
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home:  AppearanceScreen(), // Ensure Tel() is correctly implemented
      ),
    );
  }
}
