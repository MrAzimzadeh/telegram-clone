import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/chat_screen/widgets/message_container.dart';
import 'package:telegram_app/utils/widgets/custom_app_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Widget> _messages = [
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
    MessageContainer(
      isText: true,
      isImage: false,
      isReply: false,
      date: AppTexts.date6,
      thisUser: false,
      message: AppTexts.chatMessage4,
    ),
    MessageContainer(
      isText: true,
      isImage: false,
      isReply: false,
      date: AppTexts.date7,
      thisUser: false,
      message: AppTexts.chatMessage5,
    ),
    MessageContainer(
      isText: true,
      isImage: false,
      isReply: false,
      date: AppTexts.date8,
      thisUser: true,
      tick: AppTexts.tick2,
      message: AppTexts.chatMessage6,
    ),
    MessageContainer(
      isText: false,
      isImage: true,
      isReply: false,
      date: AppTexts.date9,
      thisUser: true,
      tick: AppTexts.tick2,
      image: AppTexts.chatImage3,
      imageName: AppTexts.chatImageName3,
      imageSize: AppTexts.chatImageSize3,
    ),
    MessageContainer(
      isText: false,
      isImage: true,
      isReply: false,
      date: AppTexts.date10,
      thisUser: true,
      tick: AppTexts.tick2,
      image: AppTexts.chatImage4,
      imageName: AppTexts.chatImageName4,
      imageSize: AppTexts.chatImageSize4,
    ),
  ];
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(
          MessageContainer(
            isText: true,
            isImage: false,
            isReply: false,
            date: 'Now',
            tick: AppTexts.tick2,
            thisUser: true,
            message: text,
          ),
        );
        _messageController.clear();
      });

      Future.delayed(Duration(milliseconds: 100), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: _scrollController,
              children: _messages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.background,
        child: SizedBox(
          height: 79.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
            child: Row(
              children: [
                SvgPicture.asset(AppTexts.bottomAttach),
                8.horizontalSpace,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: AppColors.elmarinBackgroundColor,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _messageController,
                            cursorColor: AppColors.cursorColor,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 7.h),
                              hintText: AppTexts.bottomHintText,
                              hintStyle: TextStyle(
                                fontFamily: 'SF-Pro-Text',
                                fontWeight: FontWeight.w400,
                                fontSize: 17.sp,
                                color: AppColors.authHintColor,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: _sendMessage,
                          child: SvgPicture.asset(AppTexts.bottomSticker),
                        ),
                      ],
                    ),
                  ),
                ),
                8.horizontalSpace,
                SvgPicture.asset(AppTexts.bottomMic),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
