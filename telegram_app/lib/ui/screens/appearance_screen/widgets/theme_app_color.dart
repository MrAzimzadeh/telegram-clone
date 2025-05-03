import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';

class ThemeAppColor extends StatefulWidget {
  const ThemeAppColor({Key? key}) : super(key: key);

  static const _items = [
    _ThemeCardData(AppImages.pinkColorTheme),
    _ThemeCardData(AppImages.orangeColorTheme),
    _ThemeCardData(AppImages.purpleColorTheme),
    _ThemeCardData(AppImages.redColorTheme),
    _ThemeCardData(AppImages.mustardColorTheme),
    _ThemeCardData(AppImages.whiteColorTheme),
    _ThemeCardData(AppImages.colorfulColorTheme),
  ];

  @override
  State<ThemeAppColor> createState() => _ThemeAppColorState();
}

class _ThemeAppColorState extends State<ThemeAppColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60.h,
      color: AppColors.background,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: ThemeAppColor._items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, i) {
          final item = ThemeAppColor._items[i];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  item.assetPath,
                  width: 40.w,
                  height: 40.h,
                  fit: BoxFit.cover,
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
  const _ThemeCardData(
    this.assetPath,
  );
}
