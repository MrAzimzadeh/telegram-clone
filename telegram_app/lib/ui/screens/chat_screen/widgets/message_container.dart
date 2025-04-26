import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer(
      {super.key,
      required this.isText,
      required this.isImage,
      required this.isReply,
      required this.date,
      this.tick,
      required this.thisUser,
      this.image,
      this.message,
      this.replyPerson,
      this.imageName,
      this.imageSize,
      this.replyMessage});

  final bool isText;
  final bool isImage;
  final bool isReply;
  final bool thisUser;
  final String? tick;
  final String date;
  final String? image;
  final String? imageName;
  final String? imageSize;
  final String? message;
  final String? replyPerson;
  final String? replyMessage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: thisUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 3.h),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: AppColors.chatMessageContainer,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isText)
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Text(
                      message!,
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Text',
                        fontWeight: FontWeight.w400,
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Text',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontSize: 11.sp,
                    ),
                  ),
                  2.5.horizontalSpace,
                  if (thisUser) SvgPicture.asset(tick!),
                ],
              ),
            if (isReply)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 2.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                      ),
                      8.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            replyPerson!,
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            replyMessage!,
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  4.verticalSpace,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        message!,
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 17.sp,
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        date,
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Text',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            if (isImage)
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      image!,
                      width: 73.w,
                      height: 73.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  13.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imageName ?? '',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        imageSize ?? '',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Text',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                        ),
                      ),
                      Row(
                        children: [
                          70.horizontalSpace,
                          Text(
                            date,
                            style: TextStyle(
                              fontFamily: 'SF-Pro-Text',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 11.sp,
                            ),
                          ),
                          5.horizontalSpace,
                          if (thisUser) SvgPicture.asset(tick!),
                        ],
                      )
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
