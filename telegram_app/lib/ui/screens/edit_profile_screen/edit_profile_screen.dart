import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/shared/widgets/three_feature_app_bar.dart';
import 'package:telegram_app/ui/screens/edit_profile_screen/widgets/photo_and_name.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.elmarinBackgroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ThreeFeatureAppBar(
            title: AppTexts.editProfile,
            suffix: Text(
              AppTexts.done,
              style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  color: AppColors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhotoAndName(),
            _buildText(AppTexts.enterYourName),
            _buildFeature(AppTexts.digital, null, null),
            _buildText(AppTexts.anyDetails),
            _buildFeature(AppTexts.changeNumber, AppTexts.phoneNumber, true),
            _buildFeature(AppTexts.username, AppTexts.userName, true),
            _buildText(null),
            _buildButton(AppColors.white, AppTexts.addAccount),
            _buildText(null),
            _buildButton(AppColors.bloodKiss, AppTexts.logOut)
          ],
        ),
      ),
    );
  }

  ColoredBox _buildButton(Color color, String label) {
    return ColoredBox(
      color: AppColors.chatsAppBarBackground,
      child: SizedBox(
        width: double.infinity,
        height: 44.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11.0),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                  color: color,
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }

  ColoredBox _buildText(String? text) {
    return ColoredBox(
      color: AppColors.elmarinBackgroundColor,
      child: SizedBox(
        width: double.infinity,
        height: text != null ? 50.h : 44.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
          child: Text(
            text ?? '',
            style: TextStyle(
                color: AppColors.tin,
                fontFamily: 'SF-Pro-Text',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  ColoredBox _buildFeature(String text, String? text2, bool? suffix) {
    return ColoredBox(
      color: AppColors.chatsAppBarBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: AppColors.white,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp),
            ),
            text2 != null
                ? Row(
                    children: [
                      Text(
                        text2,
                        style: TextStyle(
                            color: AppColors.tin,
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: AppColors.tin,
                      )
                    ],
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
