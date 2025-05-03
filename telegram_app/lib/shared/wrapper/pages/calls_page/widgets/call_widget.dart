import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';

class CallWidget extends StatelessWidget {
  const CallWidget(
      {super.key,
      required this.name,
      required this.callState,
      required this.date,
      this.isMissed = false});
  final String name;
  final String callState;
  final String date;
  final bool isMissed;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.elmarinBackgroundColor,
      child: SizedBox(
        width: double.infinity,
        height: 55.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildLeft(),
                  SizedBox(
                    width: 12.w,
                  ),
                  _buildCenter(),
                ],
              ),
              _buildRight()
            ],
          ),
        ),
      ),
    );
  }

  Row _buildRight() {
    return Row(
      children: [
        Text(
          date,
          style: TextStyle(
              color: AppColors.tin,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF-Pro-Text'),
        ),
        SizedBox(
          width: 5.w,
        ),
        Icon(
          Icons.info,
          color: AppColors.white,
        )
      ],
    );
  }

  Row _buildLeft() {
    return Row(
      children: [
        isMissed == true
            ? SizedBox(
                width: 17.w,
              )
            : Icon(
                Icons.call,
                color: AppColors.tin,
                size: 17,
              ),
        SizedBox(
          width: 10.w,
        ),
        ClipOval(
          child: Image.asset(AppImages.editProfile),
        )
      ],
    );
  }

  Column _buildCenter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
              color: isMissed == true ? AppColors.bloodKiss : AppColors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF-Pro-Text'),
        ),
        Text(
          callState,
          style: TextStyle(
              color: AppColors.tin,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF-Pro-Text'),
        )
      ],
    );
  }
}
