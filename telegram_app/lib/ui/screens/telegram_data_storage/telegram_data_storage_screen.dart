import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/telegram_data_storage/widgets/auto_data_storage.dart';
import 'package:telegram_app/ui/screens/telegram_data_storage/widgets/auto_play_media.dart';
import 'package:telegram_app/ui/screens/telegram_data_storage/widgets/data_setting_tile_item.dart';
import 'package:telegram_app/utils/widgets/custom_setting_tile_item.dart';
import 'package:telegram_app/utils/widgets/custom_simple_tile.dart';

class TelegramDataStorageScreen extends StatefulWidget {
  const TelegramDataStorageScreen({super.key});

  @override
  State<TelegramDataStorageScreen> createState() => _TelegramDataStorageScreenState();
}

class _TelegramDataStorageScreenState extends State<TelegramDataStorageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
            ),
            Divider(color: AppColors.dividerLine, height: 1),
            CustomSettingTileItem(
              title: AppTexts.dataStorageUsageTitle,
            ),
            Divider(color: AppColors.dividerLine, height: 1),
            CustomSettingTileItem(title: AppTexts.dataNetworkUsageTitle),
            Divider(color: AppColors.dividerLine, height: 1),
            35.verticalSpace,
            AutoDataStorage(),
            35.verticalSpace,
            AutoPlayMedia(),
            35.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(AppTexts.privVoiceCalls,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            6.verticalSpace,
            Divider(color: AppColors.dividerLine, height: 1),
            CustomSimpleTile(
                title: AppTexts.dataUseLessDataTitle,
                trailing: AppTexts.dataNever),
            Divider(color: AppColors.dividerLine, height: 1),
            35.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(AppTexts.dataOtherSettings,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            6.verticalSpace,
            Divider(color: AppColors.dividerLine, height: 1),
            DataSettingTileItem(
              title: AppTexts.dataSaveIncomingPhoto,
            ),
            Divider(color: AppColors.dividerLine, height: 1),
          ],
        ),
      ),
    );
  }
}
