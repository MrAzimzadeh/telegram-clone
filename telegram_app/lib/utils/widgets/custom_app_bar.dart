import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.leadingButton,
    this.actionWidget,
    this.onLeadingPressed,
    this.onActionPressed,
    this.bottomWidget,
    this.topPadding = 8, // You can control this externally
  });

  final String? title;
  final String? leading;
  final String? leadingButton;
  final Widget? actionWidget;
  final Widget? bottomWidget;
  final void Function()? onLeadingPressed;
  final void Function()? onActionPressed;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.chatsAppBarBackground,
      toolbarHeight: kToolbarHeight.h + topPadding.h,
      title: Padding(
        padding: EdgeInsets.only(top: topPadding.h),
        child: Text(
          title ?? "",
          style: TextStyle(
            color: AppColors.primaryTextColor,
            fontFamily: 'SF-Pro-Text',
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      centerTitle: true,
      leading: leading != null
          ? Padding(
              padding: EdgeInsets.only(
                  left: leadingButton != null ? 8.w : 16.w, top: topPadding.h),
              child: GestureDetector(
                onTap: onLeadingPressed,
                child: Row(
                  children: [
                    if (leadingButton != null) ...[
                      SvgPicture.asset(leadingButton!),
                      7.horizontalSpace,
                    ],
                    Text(
                      leading!,
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontFamily: 'SF-Pro-Text',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
      leadingWidth: MediaQuery.of(context).size.width / 3,
      actions: [
        if (actionWidget != null)
          Padding(
            padding: EdgeInsets.only(right: 15.w, top: topPadding.h),
            child: GestureDetector(
              onTap: onActionPressed,
              child: actionWidget,
            ),
          ),
      ],
      bottom: bottomWidget != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: bottomWidget!,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      (kToolbarHeight + topPadding).h + (bottomWidget != null ? 60.h : 0));
}
