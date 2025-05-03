import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';

class ThemeAppIcon extends StatefulWidget {
  const ThemeAppIcon({Key? key}) : super(key: key);

  static const _items = [
    _AppIconCard(AppImages.appDefaultIcon),
    _AppIconCard(AppImages.appDarkDefaultIcon),
    _AppIconCard(AppImages.appLightIcon),
    _AppIconCard(AppImages.appDarkIcon),
  ];


  @override
  State<ThemeAppIcon> createState() => _ThemeAppIconState();
}

class _ThemeAppIconState extends State<ThemeAppIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        35.verticalSpace,
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            AppTexts.appearanceAppIconTitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
            ),
          ),
        ),
        7.verticalSpace,
        Container(
  width: MediaQuery.of(context).size.width,
  height: 100.h,
          color: AppColors.background,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
            itemCount: ThemeAppIcon._items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, i) {
              final item = ThemeAppIcon._items[i];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SvgPicture.asset(
                      item.assetPath,
                      width:  62.w,
                      height:  70.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  6.verticalSpace,
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AppIconCard {
  final String assetPath;
  const _AppIconCard(this.assetPath,);
}
