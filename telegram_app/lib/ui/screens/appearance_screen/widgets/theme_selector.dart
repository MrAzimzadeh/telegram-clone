import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';

class ThemeSelector extends StatefulWidget {
  const ThemeSelector({Key? key}) : super(key: key);

  static const _items = [
    _ThemeCardData(AppImages.chatClassicColorTheme, AppTexts.appearanceClassic),
    _ThemeCardData(AppImages.chatDayColorTheme, AppTexts.appearanceDay),
    _ThemeCardData(AppImages.chatNightColorTheme, AppTexts.appearanceNight),
    _ThemeCardData(
        AppImages.chatTintedBlueColorTheme, AppTexts.appearanceTintedBlue),
  ];

  @override
  State<ThemeSelector> createState() => _ThemeSelectorState();
}

class _ThemeSelectorState extends State<ThemeSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 116.h,
      color: AppColors.background,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: ThemeSelector._items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, i) {
          final item = ThemeSelector._items[i];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  item.assetPath,
                  width: 98.w,
                  height: 62.h,
                  fit: BoxFit.cover,
                ),
              ),
              6.verticalSpace,
              Text(
                item.label,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.light,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ThemeCardData {
  final String assetPath;
  final String label;
  const _ThemeCardData(this.assetPath, this.label);
}
