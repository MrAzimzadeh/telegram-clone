import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_app_bar.dart';

class ChatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leading: AppTexts.chatsLeading,
      title: Text(
        AppTexts.chatsTitle,
        style: TextStyle(
          color: AppColors.primaryTextColor,
          fontFamily: 'SF-Pro-Text',
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      actionWidget: SvgPicture.asset(AppTexts.chatsEditIcon),
      bottomWidget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          children: [
            TextField(
              style: TextStyle(
                fontFamily: 'SF-Pro-Text',
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textFieldFill,
                isDense: true,
                contentPadding:
                    EdgeInsets.only(left: 73.w, top: 2.h, bottom: 2.h),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            Positioned(
              left: 51.w,
              top: 0,
              bottom: 0,
              child: Center(
                child: SvgPicture.asset(
                  AppTexts.chatsSearch,
                  height: 15.h,
                  width: 15.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 55.h);
}
