import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/chat_screen/chat_screen.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/chats_tile_row.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/mini_screen.dart';
import 'package:telegram_app/ui/screens/info_screen2/info_screen2.dart';

class ChatsTile extends StatefulWidget {
  const ChatsTile({
    super.key,
    required this.isPinned,
    required this.isMuted,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.date,
    this.onPressed,
    this.onDelete,
  });

  final bool isPinned;
  final bool isMuted;
  final String image;
  final String title;
  final String subtitle;
  final String date;
  final void Function(BuildContext)? onPressed;
  final void Function(BuildContext)? onDelete;

  @override
  State<ChatsTile> createState() => _ChatsTileState();
}

class _ChatsTileState extends State<ChatsTile> {
  late bool isMuted;
  late bool isPinned;

  @override
  void initState() {
    super.initState();
    isMuted = widget.isMuted;
    isPinned = widget.isPinned;
  }

  void onMute(BuildContext context) {
    setState(() {
      isMuted = !isMuted;
    });
  }

  void onPin(BuildContext context) {
    setState(() {
      isPinned = !isPinned;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: widget.onPressed,
            backgroundColor: AppColors.slidable1,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText1,
            icon: Icons.chat,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: onPin,
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
            onPressed: onMute,
            backgroundColor: AppColors.slidable3,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText3,
            icon: Icons.volume_mute_sharp,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: widget.onDelete,
            backgroundColor: AppColors.slidable4,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText4,
            icon: Icons.delete,
          ),
          SlidableAction(
            padding: EdgeInsets.zero,
            onPressed: widget.onPressed,
            backgroundColor: AppColors.slidable5,
            foregroundColor: AppColors.primaryTextColor,
            label: AppTexts.slidableText5,
            icon: Icons.archive,
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        onLongPress: () {
          showDialog(
            context: context,
            barrierColor: Colors.black54,
            builder: (context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: EdgeInsets.zero,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: MiniChatScreen(),
                      ),
                      10.verticalSpace,
                      Container(
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.background),
                        child: Column(children: [
                          10.verticalSpace,
                          ChatsTileRow(
                            text: AppTexts.modalMarkasUnreadText,
                            assetName: AppTexts.modalUnread,
                          ),
                          Divider(
                            color: AppColors.dividerColor,
                          ),
                          GestureDetector(
                            onTap: () {
                              onPin(context);
                              Navigator.of(context).pop();
                            },
                            child: ChatsTileRow(
                              text: AppTexts.modalPinText,
                              assetName: AppTexts.modalPin,
                            ),
                          ),
                          Divider(
                            color: AppColors.dividerColor,
                          ),
                          GestureDetector(
                            onTap: () {
                              // OnMute and Pop
                              onMute(context);
                              Navigator.of(context).pop();
                            },
                            child: ChatsTileRow(
                              text: AppTexts.modalMuteText,
                              assetName: AppTexts.modalMute,
                            ),
                          ),
                          Divider(
                            color: AppColors.dividerColor,
                          ),
                          GestureDetector(
                            onTap: () {
                              widget.onDelete?.call(context);
                              Navigator.of(context).pop();
                            },
                            child: ChatsTileRow(
                              text: AppTexts.modalDeleteText,
                              assetName: AppTexts.modalDelete,
                            ),
                          ),
                          10.verticalSpace,
                        ]),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InfoScreen2()));
                },
                child: Image.asset(
                  widget.image,
                  width: 60.w,
                  height: 60.h,
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontFamily: 'SF-Pro-Text',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        6.horizontalSpace,
                        if (isMuted) SvgPicture.asset(AppTexts.chatsMuted),
                      ],
                    ),
                    1.verticalSpace,
                    Text(
                      widget.subtitle,
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
                    Text(
                      widget.date,
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
      ),
    );
  }
}
