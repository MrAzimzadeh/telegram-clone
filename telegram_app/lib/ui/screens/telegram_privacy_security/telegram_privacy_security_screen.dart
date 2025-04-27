import 'package:flutter/material.dart';
import 'package:telegram_app/ui/screens/telegram_privacy_security/widgets/auto_delete_acount.dart';
import 'package:telegram_app/ui/screens/telegram_privacy_security/widgets/privacy_settings_tile.dart';
import 'package:telegram_app/ui/screens/telegram_privacy_security/widgets/telegram_privacy_item.dart';

class TelegramPrivacySecurityScreen extends StatelessWidget {
  const TelegramPrivacySecurityScreen({super.key});

 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [
          PrivacySettingsTile(),
          TelegramPrivacyItem(),
          AutoDeleteAcount(),
        ],
      ),
    ),
  );
}
}
