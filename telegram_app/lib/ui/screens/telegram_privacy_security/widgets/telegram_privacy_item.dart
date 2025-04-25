import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_simple_tile.dart';

class TelegramPrivacyItem extends StatelessWidget {
  const TelegramPrivacyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(AppTexts.privacyTitle,
              style: TextStyle(
                color: AppColors.textColor,
                fontFamily: 'SF-Pro-Text',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              )),
        ),
        6.verticalSpace,

        ///vertical space added
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privPhoneNumber, trailing: AppTexts.privMyContacts),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privLastSeenOnline,
            trailing: AppTexts.privNobodyPlus14),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privPhoneNumber, trailing: AppTexts.privEverybody),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privVoiceCalls, trailing: AppTexts.privNobodyPlus7),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privForwardedMessages,
            trailing: AppTexts.privEverybody),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
            title: AppTexts.privGroupsChannels,
            trailing: AppTexts.privEverybody),
        Divider(color: AppColors.dividerLine, height: 1),
        7.verticalSpace,
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            AppTexts.setCustomNotifications,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
