import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 36.h,
        width: 355.w,
        decoration: BoxDecoration(
          color: AppColors.textFieldFill,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.textFieldFill, width: 1),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.iconColor,
                    size: 22.sp,
                  ),
                  8.horizontalSpace,
                  if (widget.controller.text.isEmpty)
                    Text(
                      'Search',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontFamily: 'SF-Pro-Text',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
              TextField(
                controller: widget.controller,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontFamily: 'SF-Pro-Text',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
