import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_app_bar.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.elmarinBackgroundColor,
      appBar: CustomAppBar(
        leading: AppTexts.infoAppBarLeading,
        title: Text(
          AppTexts.infoAppBarTitle,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontWeight: FontWeight.w600,
              fontSize: 17.sp),
        ),
        actionWidget: Text(AppTexts.infoAppBarActions, style: TextStyle(
          fontFamily: 'SF-Pro-Text',
          fontWeight: FontWeight.w400,
          fontSize: 17.sp
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                child: Row(
                  children: [
                    Image.asset(AppTexts.infoProfile),
                    19.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 11.w),
                            child: Text(
                              AppTexts.infoZack,
                              style: TextStyle(
                                  fontFamily: 'SF-Pro-Text',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.sp),
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(left: 11.w),
                            child: Text(
                              AppTexts.infoJohn,
                              style: TextStyle(
                                  fontFamily: 'SF-Pro-Text',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.sp),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                AppTexts.infoMain,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              2.verticalSpace,
              Text(
                AppTexts.infoNum1,
                style: TextStyle(
                  color: AppColors.tertiaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              8.5.verticalSpace,
              Divider(),
              8.5.verticalSpace,
              Text(
                AppTexts.infoHome,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              2.verticalSpace,
              Text(
                AppTexts.infoNum2,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              8.5.verticalSpace,
              Divider(),
              8.5.verticalSpace,
              Text(
                AppTexts.infoBio,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              2.verticalSpace,
              Text(
                AppTexts.infoDesign,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              8.5.verticalSpace,
              Divider(),
              21.5.verticalSpace,
              Row(
                children: [
                  Text(
                    AppTexts.infoNotifications,
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  165.horizontalSpace,
                  Text(
                    AppTexts.infoEnabled,
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  10.horizontalSpace,
                  SvgPicture.asset(AppTexts.infoArrowRight),
                ],
              ),
              8.5.verticalSpace,
              Divider(),
              21.5.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTexts.infoDelete,
                    style: TextStyle(
                      color: AppColors.deleteColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                ],
              ),
              11.5.verticalSpace,
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
