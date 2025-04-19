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
        AppTexts.messageNotifications),
        const SizedBox(height: 6),
        const Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.showNotifications,
          value: showNotifications,
          onChanged: (val) => setState(() => showNotifications = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1,),
        CustomSwitchTile(
          title: AppTexts.messagePreview,
          value: messagePreview,
          onChanged: (val) => setState(() => messagePreview = val),
        ),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.sound, trailing: AppTexts.soundNone),
        const Divider(color: AppColors.dividerLine, height: 1),
        const SimpleTile(title: AppTexts.exceptions, trailing: AppTexts.chats),
        const Divider(color: AppColors.dividerLine, height: 1),
        SizedBox(height: 6),
        const Text
        (AppTexts.setCustomNotifications),
      ],
    );
  }
}
