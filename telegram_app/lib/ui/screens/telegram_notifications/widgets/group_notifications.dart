import 'package:flutter/material.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';
import 'simple_tile.dart';

class GroupNotificationsWidget extends StatefulWidget {
  const GroupNotificationsWidget({super.key});

  @override
  State<GroupNotificationsWidget> createState() => _GroupNotificationsWidgetState();
}

class _GroupNotificationsWidgetState extends State<GroupNotificationsWidget> {
  bool showNotifications = false;
  bool messagePreview = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 42),
        const Text(AppTexts.notifGroupShowNotifications),
        SizedBox(height: 6),
        const Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.notifShowNotifications,
          value: showNotifications,
          onChanged: (val) => setState(() => showNotifications = val),
        ),
        const Divider(color: AppColors.dividerLine,height: 1),
        CustomSwitchTile(
          title: AppTexts.notifMessagePreview,
          value: messagePreview,
          onChanged: (val) => setState(() => messagePreview = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.notifSound, trailing: AppTexts.notifSoundNone),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.notifExceptions, trailing: AppTexts.notifAddText),
        const Divider(color: AppColors.dividerLine, height: 1),
        SizedBox(height: 7),
        const Text(AppTexts.notifSetCustomNotifications),
      ],
    );
  }
}
