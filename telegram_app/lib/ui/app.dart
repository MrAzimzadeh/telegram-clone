import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/ui/screens/chat_screen/chat_screen.dart';

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
        home: ChatScreen(),
      ),
    );
  }
}
