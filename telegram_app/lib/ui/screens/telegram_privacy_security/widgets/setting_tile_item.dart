import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class SettingTileItem extends StatelessWidget {
  final String title;
  final String? rightText;
  final Widget icon;

  const SettingTileItem({
    super.key,
    required this.icon,
    required this.title,
    this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cocosBlack,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: icon,
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (rightText != null)
              Text(
                rightText!,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            8.verticalSpace,
            Icon(
              Icons.chevron_right,
              color: AppColors.iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
