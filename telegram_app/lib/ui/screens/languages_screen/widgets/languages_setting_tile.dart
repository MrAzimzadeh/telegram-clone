import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class LanguagesSettingTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? icon;

  const LanguagesSettingTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cocosBlack,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'SF-Pro-Text',
            fontSize: 17.sp,
            color: AppColors.light,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: subtitle != null
            ? Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  subtitle!,
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 13.sp,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            : null,
        trailing: Icon(
          Icons.check,
          color: AppColors.iconColor,
        ),
      ),
    );
  }
}
