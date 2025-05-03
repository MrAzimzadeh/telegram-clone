import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/edit_profile_screen/edit_profile_screen.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditProfileScreen()));
      },
      child: SizedBox(
        width: double.infinity,
        height: 100.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  AppImages.editProfile,
                  width: 66.w,
                  height: 66.h,
                ),
              ),
              SizedBox(
                width: 13.w,
              ),
              SizedBox(
                width: 267.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfo(),
                    Icon(
                      Icons.arrow_right,
                      color: AppColors.textColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _buildInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.fullName,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontSize: 19.sp,
              color: AppColors.white,
              fontWeight: FontWeight.w500),
        ),
        Text(
          AppTexts.phoneNumber,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontSize: 15.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w400),
        ),
        Text(
          AppTexts.userName,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontSize: 15.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
