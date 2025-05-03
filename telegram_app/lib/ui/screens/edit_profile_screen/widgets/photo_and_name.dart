import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_images.dart';
import 'package:telegram_app/constants/app_texts.dart';

class PhotoAndName extends StatelessWidget {
  const PhotoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.chatsAppBarBackground,
      child: SizedBox(
        width: double.infinity,
        height: 100.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
          child: Row(
            children: [
              _buildProfilePhoto(context),
              SizedBox(
                width: 35.w,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 245.w,
                    height: 25.h,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Jacob W.',
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(
                              color: AppColors.white,
                              fontFamily: 'SF-Pro-Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 17.sp),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ColoredBox(
                    color: AppColors.tin,
                    child: SizedBox(
                      width: 245.w,
                      height: 1,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 245.w,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Last Name',
                          alignLabelWithHint: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell _buildProfilePhoto(BuildContext context) {
    return InkWell(
      onTap: () {
        _showActionSheet(context);
      },
      child: Stack(
        children: [
          ClipOval(
            child: Image.asset(
              AppImages.editProfile,
              width: 66.w,
              height: 66.w,
            ),
          ),
          Positioned(
            child: SizedBox(
              width: 66.w,
              height: 66.w,
              child: ClipOval(
                child: ColoredBox(color: AppColors.changeProfile),
              ),
            ),
          ),
          Positioned.fill(
              child: Icon(
            CupertinoIcons.camera_fill,
            size: 25,
          ))
        ],
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
              actions: [
                CupertinoActionSheetAction(
                    onPressed: () {},
                    child: Text(
                      AppTexts.choosePhoto,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Text'),
                    )),
                CupertinoActionSheetAction(
                    onPressed: () {},
                    child: Text(
                      AppTexts.webSearch,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Text'),
                    )),
                CupertinoActionSheetAction(
                    onPressed: () {},
                    child: Text(
                      AppTexts.viewPhoto,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Text'),
                    )),
                CupertinoActionSheetAction(
                    onPressed: () {},
                    child: Text(
                      AppTexts.removePhoto,
                      style: TextStyle(
                          color: AppColors.bloodKiss,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro-Text'),
                    ))
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDefaultAction: true,
                child: Text(
                  AppTexts.cancel,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF-Pro-Text'),
                ),
              ),
            ));
  }
}
