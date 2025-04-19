import 'package:flutter/material.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';

class ShowNotificationsWidget extends StatefulWidget {
  const ShowNotificationsWidget({super.key});

  @override
  State<ShowNotificationsWidget> createState() => _ShowNotificationsWidgetState();
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
          const Text
          (AppTexts.showNotificationsFrom),
           SizedBox(height: 6),
          const Divider(color: AppColors.dividerLine, height: 1),
          CustomSwitchTile(
            title: AppTexts.allAccounts,
            value: allAccounts,
            onChanged: (val) => setState(() => allAccounts = val),
          ),
          const Divider(color: AppColors.dividerLine, height: 1),
          SizedBox(height: 7),
          const Text
          (AppTexts.turnOffToReceiveNotifications),
          SizedBox(
            height: 42,
          ),
        ],
      ),
    );
  }
}