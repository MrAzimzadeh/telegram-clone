import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_app_bar.dart';

class InfoScreen2 extends StatelessWidget {
  const InfoScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.elmarinBackgroundColor,
      appBar: CustomAppBar(
        leadingButton: AppTexts.backButton,
        leading: AppTexts.info2Back,
        onLeadingPressed: () => Navigator.of(context).pop(),
        title: Text(
          AppTexts.info2Info,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontWeight: FontWeight.w600,
              fontSize: 17.sp),
        ),
        actionWidget: Text(
          AppTexts.info2Edit,
          style: TextStyle(
              fontFamily: 'SF-Pro-Text',
              fontWeight: FontWeight.w400,
              fontSize: 17.sp),
        ),
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
                              AppTexts.info2Zack,
                              style: TextStyle(
                                  fontFamily: 'SF-Pro-Text',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19.sp),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11.w),
                            child: Text(
                              AppTexts.info2online,
                              style: TextStyle(
                                  color: AppColors.enabledColor,
                                  fontFamily: 'SF-Pro-Text',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 21.w),
                      child: SvgPicture.asset(AppTexts.infoCall),
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
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
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
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
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
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Text(
                AppTexts.info2username,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              2.verticalSpace,
              Text(
                AppTexts.info2zacklife,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              8.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Text(
                AppTexts.info2SendMessage,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Text(
                AppTexts.info2ShareContact,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Text(
                AppTexts.info2StartSecretChat,
                style: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              31.5.verticalSpace,
              Row(
                children: [
                  Text(
                    AppTexts.info2SharedMedia,
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  231.horizontalSpace,
                  SvgPicture.asset(AppTexts.infoArrowRight)
                ],
              ),
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Row(
                children: [
                  Text(
                    AppTexts.info2Notifications,
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
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              9.5.verticalSpace,
              Row(
                children: [
                  Text(
                    AppTexts.info2GroupsInCommon,
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  168.horizontalSpace,
                  Text(
                    AppTexts.info2EnabledNumber,
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontSize: 17.sp,
                    ),
                  ),
                  13.horizontalSpace,
                  SvgPicture.asset(AppTexts.infoArrowRight)
                ],
              ),
              9.5.verticalSpace,
              Divider(
                color: AppColors.dividerColor,
                thickness: 0.33,
              ),
              21.5.verticalSpace,
              Text(
                AppTexts.info2BlockUser,
                style: TextStyle(
                    color: AppColors.deleteColor,
                    fontFamily: 'SF-Pro-Text',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp),
              ),
              22.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
