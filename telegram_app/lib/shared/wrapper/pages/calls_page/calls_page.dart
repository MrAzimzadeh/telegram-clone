import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/shared/wrapper/pages/calls_page/tabs/all_calls_tab.dart';
import 'package:telegram_app/shared/wrapper/pages/calls_page/tabs/missed_calls_tab.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  bool all = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.chatsAppBarBackground,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  AppTexts.edit,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.elmarinBackgroundColor,
                      borderRadius: BorderRadius.circular(9)),
                  child: SizedBox(
                    width: 170.w,
                    height: 32.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                all = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: all == true
                                    ? AppColors.chatsAppBarBackground
                                    : AppColors.elmarinBackgroundColor,
                                minimumSize: Size(76.w, 28.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Text(
                              'All',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SF-Pro-Text'),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                all = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: all == true
                                    ? AppColors.elmarinBackgroundColor
                                    : AppColors.chatsAppBarBackground,
                                minimumSize: Size(76.w, 28.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Text(
                              'Missed',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SF-Pro-Text'),
                            ))
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.phone,
                  color: AppColors.white,
                )
              ],
            ),
          )),
      body: all == true
          ? AllCallsTab(
              name: 'Martin Randolph',
              callState: 'Outgoing (2 mins)',
              date: '10/13',
            )
          : MissedCallsTab(),
    ));
  }
}
