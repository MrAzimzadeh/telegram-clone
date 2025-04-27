import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_simple_tile.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';

class MessageNotificationsWidget extends StatefulWidget {
  const MessageNotificationsWidget({super.key});

  @override
  State<MessageNotificationsWidget> createState() =>
      _MessageNotificationsWidgetState();
}

class _MessageNotificationsWidgetState
    extends State<MessageNotificationsWidget> {
  bool showNotifications = true;
  bool messagePreview = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.notifMessageNotifications,
          style: TextStyle(
            color: AppColors.light,
            fontFamily: 'SF-Pro-Text',
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        6.verticalSpace,
        const Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.notifShowNotifications,
          value: showNotifications,
          onChanged: (val) => setState(() => showNotifications = val),
        ),
        const Divider(
          color: AppColors.dividerLine,
          height: 1,
        ),
        CustomSwitchTile(
          title: AppTexts.notifMessagePreview,
          value: messagePreview,
          onChanged: (val) => setState(() => messagePreview = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1),
        const CustomSimpleTile(
            title: AppTexts.notifSound, trailing: AppTexts.notifSoundNone),
        const Divider(color: AppColors.dividerLine, height: 1),
        const CustomSimpleTile(
            title: AppTexts.notifExceptions, trailing: AppTexts.notifChats),
        const Divider(color: AppColors.dividerLine, height: 1),
        6.verticalSpace,
        Text(
          AppTexts.notifSetCustomNotifications,
          style: TextStyle(
            color: AppColors.textColor,
            fontFamily: 'SF-Pro-Text',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
