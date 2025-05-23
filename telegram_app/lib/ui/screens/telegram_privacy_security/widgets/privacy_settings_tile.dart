import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_setting_tile_item.dart';

class PrivacySettingsTile extends StatelessWidget {
  const PrivacySettingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 75,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: AppColors.dividerLine, height: 1),
          CustomSettingTileItem(
            title: AppTexts.privBlockedUsers,
            rightText: '9',
            icon: SvgPicture.asset(
              AppImages.blockIcon,
            ),
          ),
          Divider(color: AppColors.dividerLine, height: 1),
          CustomSettingTileItem(
            icon: SvgPicture.asset(
              AppImages.activeSessionIcon,
            ),
            title: AppTexts.privActiveSessions,
            rightText: '2',
          ),
          Divider(color: AppColors.dividerLine, height: 1),
          CustomSettingTileItem(
            icon: SvgPicture.asset(
              AppImages.passcodeIcon,
              height: 29,
              width: 29,
            ),
            title: AppTexts.privPasscodeFaceID,
            rightText: 'Off',
          ),
          Divider(color: AppColors.dividerLine, height: 1),
          CustomSettingTileItem(
            icon: SvgPicture.asset(
              AppImages.lockIcon,
              height: 29,
              width: 29,
            ),
            title: AppTexts.privTwoStepVerification,
            rightText: 'On',
          ),
          Divider(color: AppColors.dividerLine, height: 1),
          35.verticalSpace,
        ],
      ),
    );
  }
}
