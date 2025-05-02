import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/color_theme.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/theme_app_color.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/theme_app_icon.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/theme_selector.dart';
import 'package:telegram_app/ui/screens/appearance_screen/widgets/font_range_sliders.dart';
import 'package:telegram_app/utils/widgets/custom_setting_tile_item.dart';

class AppearanceScreen extends StatefulWidget {
  const AppearanceScreen({super.key});

  @override
  State<AppearanceScreen> createState() => _AppearanceScreenState();
}

class _AppearanceScreenState extends State<AppearanceScreen> {
 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ColorTheme(),
            6.verticalSpace,
            ThemeSelector(),
            ThemeAppColor(),
            35.verticalSpace,
            Divider(color: AppColors.dividerLine, height: 1),
            CustomSettingTileItem(
              title: AppTexts.appearanceChatBackground,
            ),
            Divider(color: AppColors.dividerLine, height: 1),
            CustomSettingTileItem(
              title: AppTexts.appearanceAutoMode,
              rightText: AppTexts.dataDisabled,
            ),
            Divider(color: AppColors.dividerLine, height: 1),
            35.verticalSpace,
            FontRangeSliders(),
            ThemeAppIcon(),
          ],
        ),
      ),
    ),
  );
}
}