import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
