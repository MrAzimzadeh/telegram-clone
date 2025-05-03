import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/models/setting_button_model.dart';
import 'package:telegram_app/shared/widgets/three_feature_app_bar.dart';
import 'package:telegram_app/shared/wrapper/pages/settings_page/widgets/edit_profile_button.dart';
import 'package:telegram_app/shared/wrapper/pages/settings_page/widgets/setting_button.dart';
import 'package:telegram_app/shared/wrapper/pages/settings_page/widgets/settings_search_bar.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final List<SettingButtonModel> items = [
    SettingButtonModel(icon: Icon(Icons.ad_units), title: '1'),
    SettingButtonModel(
        icon: Icon(Icons.account_balance), title: 'Jacob Design'),
    SettingButtonModel(icon: Icon(Icons.add), title: 'Add Account'),
    SettingButtonModel(icon: Icon(Icons.ad_units), title: '2'),
    SettingButtonModel(
        icon: Icon(Icons.save), title: 'Saved Messages', suffix: true),
    SettingButtonModel(
        icon: Icon(Icons.call), title: 'Recent Calls', suffix: true),
    SettingButtonModel(
        icon: Icon(Icons.pages), title: 'Stickers', suffix: true),
    SettingButtonModel(icon: Icon(Icons.ad_units), title: '3'),
    SettingButtonModel(
        icon: Icon(Icons.notification_add),
        title: 'Notifications and Sounds',
        suffix: true),
    SettingButtonModel(
        icon: Icon(Icons.lock), title: 'Privacy and Security', suffix: true),
    SettingButtonModel(
        icon: Icon(Icons.data_array), title: 'Data and Storage', suffix: true),
    SettingButtonModel(
        icon: Icon(Icons.edit), title: 'Appearance', suffix: true)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.chatsAppBarBackground,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ThreeFeatureAppBar(title: AppTexts.settings)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsSearchBar(),
            SizedBox(
              height: 10.h,
            ),
            EditProfileButton(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                if (items[index].title == '1') {
                  return _buildSpace();
                } else if (items[index].title == '2') {
                  return _buildSpace();
                } else if (items[index].title == '3') {
                  return _buildSpace();
                } else {
                  return InkWell(
                    onTap: () {},
                    child: SettingButton(
                      prefix: items[index].icon,
                      title: items[index].title,
                      suffix: items[index].suffix,
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    ));
  }

  ColoredBox _buildSpace() {
    return ColoredBox(
      color: AppColors.elmarinBackgroundColor,
      child: SizedBox(
        width: double.infinity,
        height: 44.h,
      ),
    );
  }
}
