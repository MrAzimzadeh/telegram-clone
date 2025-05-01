import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/extensions/triangle.dart';

class AuthScreenStack extends StatelessWidget {
  const AuthScreenStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 67.5.w,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: AppColors.borderColor),
            ),
          ),
          child: Center(
            child: Text(
              AppTexts.auth1,
              style: TextStyle(
                color: AppColors.primaryTextColor,
                fontFamily: 'SF-Pro-Display',
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: 23,
          top: -0.5,
          child: Transform.rotate(
            angle: math.pi,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: AppColors.borderColor,
                strokeWidth: 1,
                paintingStyle: PaintingStyle.fill,
              ),
              child: const SizedBox(
                height: 10,
                width: 20,
              ),
            ),
          ),
        ),
        Positioned(
          left: 23,
          top: -1.5,
          child: Transform.rotate(
            angle: math.pi,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeColor: AppColors.elmarinBackgroundColor,
                strokeWidth: 1,
                paintingStyle: PaintingStyle.fill,
              ),
              child: const SizedBox(
                height: 10,
                width: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
