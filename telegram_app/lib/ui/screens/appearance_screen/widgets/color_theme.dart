import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/color_theme_item.dart';

class ColorTheme extends StatefulWidget {
  const ColorTheme({super.key});

  @override
  State<ColorTheme> createState() => _ColorThemeState();
}

class _ColorThemeState extends State<ColorTheme> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Text(
            AppTexts.appearanceColorThemeTitle,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 14.sp, 
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
            ),
          ),
        ),
        Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                width: 375.w,
                height: 220.h,
                AppImages.chatBackgroundWallpaper,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorThemeItem(
                  sender: AppTexts.appearReceiverMessage1,
                  message: AppTexts.appearReceiverMessage2,
                  messageNew: AppTexts.appearReceiverMessage3,
                  emoji: '👋',
                  time: '00:20',
                  isIncoming: true,
                  isRead: false,
                ),
                ColorThemeItem(
                  message: AppTexts.appearSenderMessage,
                  emoji: '😎',
                  time: '00:20',
                  isIncoming: false,
                  isRead: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
