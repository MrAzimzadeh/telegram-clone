import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';

class ChatsTile extends StatelessWidget {
  const ChatsTile({
    super.key,
    required this.isPinned,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.date,
    this.onPressed,
  });

  final bool isPinned;
  final String image;
  final String title;
  final String subtitle;
  final String date;
  final void Function(BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            backgroundColor: AppColors.slidable1,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText1,
            icon: Icons.chat,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            backgroundColor: AppColors.slidable2,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText2,
            icon: Icons.push_pin,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            backgroundColor: AppColors.slidable3,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText3,
            icon: Icons.volume_mute_sharp,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            backgroundColor: AppColors.slidable4,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText4,
            icon: Icons.delete,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPressed,
            backgroundColor: AppColors.slidable5,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText5,
            icon: Icons.archive,
          ),
        ],
      ),
      child: Container(
        height: 76.h,
        padding: EdgeInsets.only(left: 9.w, top: 7.h, bottom: 9.h),
        decoration: BoxDecoration(
          color: isPinned
              ? AppColors.chatsAppBarBackground
              : AppColors.unpinnedChat,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 60.w,
              height: 60.h,
            ),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  1.verticalSpace,
                  // Subtitle
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ],
              ),
            ),
            12.horizontalSpace,
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Date
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                  12.verticalSpace,
                  if (isPinned)
                    SvgPicture.asset(
                      AppTexts.chatsPinned,
                      width: 21.w,
                      height: 21.h,
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
