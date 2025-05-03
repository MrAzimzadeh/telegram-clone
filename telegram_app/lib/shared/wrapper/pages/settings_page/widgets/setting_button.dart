import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class SettingButton extends StatelessWidget {
  const SettingButton(
      {super.key,
      required this.prefix,
      required this.title,
      this.suffix = false});
  final Widget prefix;
  final String title;
  final bool suffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLeft(),
            suffix == true ? Icon(Icons.arrow_right) : SizedBox()
          ],
        ),
      ),
    );
  }

  Row _buildLeft() {
    return Row(
      children: [
        prefix,
        SizedBox(
          width: 16.w,
        ),
        Text(
          title,
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
              fontSize: 17.sp,
              fontFamily: 'SF-Pro-Text'),
        )
      ],
    );
  }
}
