import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';

class SettingsSearchBar extends StatelessWidget {
  const SettingsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontFamily: 'SF-Pro-Text',
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: AppTexts.search,
        filled: true,
        fillColor: AppColors.textFieldFill,
        isDense: true,
        contentPadding: EdgeInsets.only(top: 2.h, bottom: 2.h),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
