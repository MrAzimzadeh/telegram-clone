import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class ThreeFeatureAppBar extends StatelessWidget {
  const ThreeFeatureAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Sf-Pro_Text',
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            fontSize: 17.sp),
      ),
      backgroundColor: AppColors.chatsAppBarBackground,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(
            CupertinoIcons.add,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
