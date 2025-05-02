import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/auth_screen/widgets/auth_screen_stack.dart';
import 'package:telegram_app/ui/screens/chats_screen/chats_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _cupertinoValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.elmarinBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    right: 17.w, left: 16.w, top: 10.h, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppTexts.authCancel,
                      style: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontFamily: 'SF-Pro-Text',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => ChatsScreen()));
                      },
                      child: Text(
                        AppTexts.authNext,
                        style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),

              17.verticalSpace,

              // Title
              Text(
                AppTexts.authYourPhone,
                style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontFamily: 'SF-Pro-Display',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w300),
              ),

              17.verticalSpace,

              // Subtitle
              Padding(
                padding: EdgeInsets.only(left: 50.w, right: 50.w),
                child: Text(
                  textAlign: TextAlign.center,
                  AppTexts.authSubtitle,
                  style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
              ),

              44.verticalSpace,

              Container(
                margin: EdgeInsets.only(left: 15.w),
                height: 56.h,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: AppColors.borderColor),
                        bottom: BorderSide(color: AppColors.borderColor))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          AppTexts.authUsa,
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontFamily: 'SF-Pro-Display',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.w),
                height: 56.h,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: AppColors.borderColor))),
                child: Center(
                  child: Row(
                    children: [
                      AuthScreenStack(),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.5.w),
                          child: TextField(
                            cursorColor: AppColors.cursorColor,
                            cursorRadius: Radius.circular(2.r),
                            cursorHeight: 26.h,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontFamily: 'SF-Pro-Display',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              hintText: AppTexts.authPhoneNumber,
                              hintStyle: TextStyle(
                                color: AppColors.authHintColor,
                                fontFamily: 'SF-Pro-Display',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                              isCollapsed: true,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              14.5.verticalSpace,
              // Switch
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppTexts.authSync,
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontFamily: 'SF-Pro-Text',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    CupertinoSwitch(
                      value: _cupertinoValue,
                      onChanged: (value) {
                        setState(() {
                          _cupertinoValue = value;
                        });
                      },
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
