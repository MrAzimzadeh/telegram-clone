import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';

class ShowNotificationsWidget extends StatefulWidget {
  const ShowNotificationsWidget({super.key});

  @override
  State<ShowNotificationsWidget> createState() =>
      _ShowNotificationsWidgetState();
}

class _ShowNotificationsWidgetState extends State<ShowNotificationsWidget> {
  bool allAccounts = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 75,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.notifShowNotificationsFrom,
            style: TextStyle(
              color: AppColors.light,
              fontFamily: 'SF-Pro-Text',
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          6.verticalSpace,

          ///vertical space added
          const Divider(color: AppColors.dividerLine, height: 1),
          CustomSwitchTile(
            title: AppTexts.notifAllAccounts,
            value: allAccounts,
            onChanged: (val) => setState(() => allAccounts = val),
          ),
          const Divider(color: AppColors.dividerLine, height: 1),
          7.verticalSpace,
          Text(
            AppTexts.notifTurnOffToReceiveNotifications,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          42.verticalSpace,
        ],
      ),
    );
  }
}
