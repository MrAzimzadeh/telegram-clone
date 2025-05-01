import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';

class ContactsTile extends StatelessWidget {
  const ContactsTile(
      {super.key,
      required this.photoDr,
      required this.name,
      this.online = false,
      this.lastSeen});
  final String photoDr;
  final String name;
  final String? lastSeen;
  final bool online;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              AppImages.appPngs + photoDr,
              width: 40.w,
              height: 40.h,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white),
              ),
              Text(
                online == true
                    ? 'online'
                    : lastSeen == null
                        ? ''
                        : 'last seen $lastSeen',
                style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    color: online == true
                        ? AppColors.onlineColor
                        : AppColors.appBarBackground),
              )
            ],
          )
        ],
      ),
    );
  }
}
