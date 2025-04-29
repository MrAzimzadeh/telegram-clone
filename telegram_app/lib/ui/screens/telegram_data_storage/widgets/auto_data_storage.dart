import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/telegram_data_storage/widgets/data_setting_tile_item.dart';

class AutoDataStorage extends StatelessWidget {
  const AutoDataStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            AppTexts.dataAutomaticMediaDownloadTitle,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        7.verticalSpace,
        Divider(color: AppColors.dividerLine, height: 1),
        DataSettingTileItem(
          title: AppTexts.dataUsingCellular,
          subtitle: AppTexts.dataDisabled,
        ),
        Divider(color: AppColors.dividerLine, height: 1),
        DataSettingTileItem(
          title: AppTexts.dataUsingWiFi,
          subtitle: AppTexts.dataDisabled,
        ),
        Divider(color: AppColors.dividerLine, height: 1),
        DataSettingTileItem(
          title: AppTexts.dataResetDownloadSettings,
        ),
        Divider(color: AppColors.dividerLine, height: 1),
      ],
    );
  }
}
