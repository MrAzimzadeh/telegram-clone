import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/chat_screen/widgets/message_container.dart';
import 'package:telegram_app/utils/widgets/custom_app_bar.dart';

class MiniChatScreen extends StatelessWidget {
  const MiniChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(
          title: Column(
            children: [
              Text(
                AppTexts.chatTitle,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                ),
              ),
              Text(
                AppTexts.chatSubtitle,
                style: TextStyle(
                  fontFamily: 'SF-Pro-Text',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
          leadingButton: AppTexts.backButton,
          leading: AppTexts.chatLeading,
          onLeadingPressed: () {
            Navigator.of(context).pop();
          },
          actionWidget: Image.asset(AppTexts.chatAction),
        ),
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                AppTexts.chatBackground,
                fit: BoxFit.cover,
              ),
            ),
            // Scrollable List of Messages
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: ListView(
                children: [
                  MessageContainer(
                    isText: true,
                    isImage: false,
                    isReply: false,
                    date: AppTexts.date1,
                    tick: AppTexts.tick2,
                    thisUser: true,
                    message: AppTexts.chatMessage1,
                  ),
                  MessageContainer(
                    isText: false,
                    isImage: true,
                    isReply: false,
                    date: AppTexts.date2,
                    tick: AppTexts.tick2,
                    thisUser: true,
                    image: AppTexts.chatImage1,
                    imageSize: AppTexts.chatImageSize1,
                    imageName: AppTexts.chatImageName1,
                  ),
                  MessageContainer(
                    isText: false,
                    isImage: true,
                    isReply: false,
                    date: AppTexts.date3,
                    tick: AppTexts.tick2,
                    thisUser: true,
                    image: AppTexts.chatImage2,
                    imageSize: AppTexts.chatImageSize2,
                    imageName: AppTexts.chatImageName2,
                  ),
                  MessageContainer(
                    isText: false,
                    isImage: false,
                    isReply: true,
                    date: AppTexts.date4,
                    thisUser: false,
                    message: AppTexts.chatMessage2,
                    replyPerson: AppTexts.replyPerson1,
                    replyMessage: AppTexts.replyMessage1,
                  ),
                  MessageContainer(
                    isText: true,
                    isImage: false,
                    isReply: false,
                    date: AppTexts.date5,
                    thisUser: true,
                    tick: AppTexts.tick1,
                    message: AppTexts.chatMessage3,
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
