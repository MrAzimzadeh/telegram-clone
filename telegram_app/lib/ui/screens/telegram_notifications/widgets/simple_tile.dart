import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class SimpleTile extends StatelessWidget {
  final String title;
  final String trailing;

  const SimpleTile({
    super.key,
    required this.title,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cocosBlack,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          title,
          style:  TextStyle(
            color: AppColors.light,
            fontFamily: 'SF-Pro-Text',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              trailing,
              style:  TextStyle(
                color: AppColors.textColor,
                fontFamily: 'SF-Pro-Text',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
