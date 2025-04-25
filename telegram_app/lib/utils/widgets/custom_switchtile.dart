import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class CustomSwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitchTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SwitchListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          title,
          style:  TextStyle(
            color: AppColors.light,
            fontFamily: 'SF-Pro-Text',
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: value,
        onChanged: onChanged,
        activeColor: AppColors.switchOn,
        inactiveThumbColor: AppColors.switchOff,
      ),
    );
  }
}