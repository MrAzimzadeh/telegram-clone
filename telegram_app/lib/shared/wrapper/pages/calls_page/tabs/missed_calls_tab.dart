import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class MissedCallsTab extends StatelessWidget {
  const MissedCallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Missed Calls Tab',
          style: TextStyle(color: AppColors.white, fontSize: 40.sp),
        ),
      ),
    );
  }
}
