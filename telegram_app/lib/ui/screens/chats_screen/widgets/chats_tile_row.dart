import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';

class ChatsTileRow extends StatelessWidget {
  const ChatsTileRow({super.key, required this.text, required this.assetName});

  final String text;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text( 
            text,
            style: TextStyle(
              color: assetName == AppTexts.modalDelete ? AppColors.deleteColor : AppColors.primaryTextColor,
                fontFamily: 'SF-Pro-Text',
                fontSize: 17.sp,
                fontWeight: FontWeight.w400),
          ),
          SvgPicture.asset(assetName)
        ],
      ),
    );
  }
}
