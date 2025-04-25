import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/chats_app_bar.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/chats_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: ChatsAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture1,
                  title: AppTexts.chatsTileTitle1,
                  subtitle: AppTexts.chatsSubtitle1,
                  date: AppTexts.chatsDate1),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture2,
                  title: AppTexts.chatsTileTitle2,
                  subtitle: AppTexts.chatsSubtitle2,
                  date: AppTexts.chatsDate2),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture3,
                  title: AppTexts.chatsTileTitle3,
                  subtitle: AppTexts.chatsSubtitle3,
                  date: AppTexts.chatsDate3),
              ChatsTile(
                  isPinned: false,
                  image: AppTexts.chatsProfilePicture4,
                  title: AppTexts.chatsTileTitle4,
                  subtitle: AppTexts.chatsSubtitle4,
                  date: AppTexts.chatsDate4),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: false,
                  image: AppTexts.chatsProfilePicture5,
                  title: AppTexts.chatsTileTitle5,
                  subtitle: AppTexts.chatsSubtitle5,
                  date: AppTexts.chatsDate5),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: false,
                  image: AppTexts.chatsProfilePicture6,
                  title: AppTexts.chatsTileTitle6,
                  subtitle: AppTexts.chatsSubtitle6,
                  date: AppTexts.chatsDate6),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: false,
                  image: AppTexts.chatsProfilePicture7,
                  title: AppTexts.chatsTileTitle7,
                  subtitle: AppTexts.chatsSubtitle7,
                  date: AppTexts.chatsDate7),
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture1,
                  title: AppTexts.chatsTileTitle1,
                  subtitle: AppTexts.chatsSubtitle1,
                  date: AppTexts.chatsDate1),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture2,
                  title: AppTexts.chatsTileTitle2,
                  subtitle: AppTexts.chatsSubtitle2,
                  date: AppTexts.chatsDate2),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
              ChatsTile(
                  isPinned: true,
                  image: AppTexts.chatsProfilePicture3,
                  title: AppTexts.chatsTileTitle3,
                  subtitle: AppTexts.chatsSubtitle3,
                  date: AppTexts.chatsDate3),
              ChatsTile(
                  isPinned: false,
                  image: AppTexts.chatsProfilePicture4,
                  title: AppTexts.chatsTileTitle4,
                  subtitle: AppTexts.chatsSubtitle4,
                  date: AppTexts.chatsDate4),
              Divider(
                height: 0,
                color: AppColors.dividerColor,
                indent: 79.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
