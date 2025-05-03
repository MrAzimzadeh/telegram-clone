import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/shared/wrapper/pages/calls_page/calls_page.dart';

import 'package:telegram_app/shared/wrapper/pages/contacts_page/contacts_page.dart';
import 'package:telegram_app/shared/wrapper/pages/settings_page/settings_page.dart';
import 'package:telegram_app/ui/screens/chats_screen/chats_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person), label: AppTexts.contacts),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.phone_fill), label: AppTexts.calls),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.chat_bubble_2_fill), label: AppTexts.chats),
    BottomNavigationBarItem(
        icon: ClipOval(
          child: Image.asset(
            '${AppImages.appPngs}chat_image4.png',
            width: 25.w,
            height: 25.h,
          ),
        ),
        label: AppTexts.settings)
  ];

  final List<Widget> pages = [
    ContactsPage(),
    CallsPage(),
    ChatsScreen(),
    SettingsPage()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.chatsAppBarBackground,
      bottomNavigationBar: _buildBottomNavBar(),
      body: pages[currentIndex],
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.chatsAppBarBackground,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.dividerColor,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        items: items,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        });
  }
}
