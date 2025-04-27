import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_simple_tile.dart';

class AutoDeleteAcount extends StatelessWidget {
  const AutoDeleteAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        41.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(AppTexts.privAutoDeleteAccount,
              style: TextStyle(
                color: AppColors.textColor,
                fontFamily: 'SF-Pro-Text',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              )),
        ),
        6.verticalSpace,
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSimpleTile(
          title: AppTexts.privIfAwayFor,
          trailing: AppTexts.privMonths,
        ),
        Divider(color: AppColors.dividerLine, height: 1),
        7.verticalSpace,
        Text(AppTexts.privAutoDeleteDescription,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}
