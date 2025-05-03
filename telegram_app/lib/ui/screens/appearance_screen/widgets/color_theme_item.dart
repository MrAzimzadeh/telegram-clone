import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';

class ColorThemeItem extends StatelessWidget {
  final String? sender;
  final String message;
  final String? messageNew;
  final String emoji;
  final String time;
  final bool isIncoming;
  final bool isRead;

  const ColorThemeItem({
    super.key,
    this.sender,
    this.messageNew,
    required this.message,
    required this.emoji,
    required this.time,
    required this.isIncoming,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isIncoming ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        constraints: BoxConstraints(maxWidth: 280.w),
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                isIncoming ? AppImages.chatBg : AppImages.chatBgOther,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                crossAxisAlignment: isIncoming
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  if (isIncoming && sender != null)
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Text(
                        sender!,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.light,
                          fontFamily: 'SF-Pro-Text',
                        ),
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: isIncoming
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          "$message $emoji",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.light,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF-Pro-Text',
                          ),
                        ),
                      ),
                      if (!isIncoming) ...[
                        SizedBox(width: 4.w),
                        Text(
                          time,
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF-Pro-Text',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        if (isRead) ...[
                          SizedBox(width: 4.w),
                          SvgPicture.asset(
                            AppImages.chatReadIcon,
                            width: 14.w,
                            height: 8.h,
                          ),
                        ],
                      ],
                    ],
                  ),
                  if (messageNew != null)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: isIncoming
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text(
                              messageNew!,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.light,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF-Pro-Text',
                              ),
                            ),
                          ),
                         6.verticalSpace,
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF-Pro-Text',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
