import 'package:flutter/material.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';
import 'simple_tile.dart';

class MessageNotificationsWidget extends StatefulWidget {
  const MessageNotificationsWidget({super.key});

  @override
  State<MessageNotificationsWidget> createState() => _MessageNotificationsWidgetState();
}

class _MessageNotificationsWidgetState extends State<MessageNotificationsWidget> {
  bool showNotifications = true;
  bool messagePreview = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
        AppTexts.notifMessageNotifications),
        const SizedBox(height: 6),
        const Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.notifShowNotifications,
          value: showNotifications,
          onChanged: (val) => setState(() => showNotifications = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1,),
        CustomSwitchTile(
          title: AppTexts.notifMessagePreview,
          value: messagePreview,
          onChanged: (val) => setState(() => messagePreview = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.notifSound, trailing: AppTexts.notifSoundNone),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.notifExceptions, trailing: AppTexts.notifChats),
        const Divider(color: AppColors.dividerLine, height: 1),
        SizedBox(height: 6),
        const Text
        (AppTexts.notifSetCustomNotifications),
      ],
    );
  }
}
