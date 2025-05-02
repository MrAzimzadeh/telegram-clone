import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/chats_app_bar.dart';
import 'package:telegram_app/ui/screens/chats_screen/widgets/chats_tile.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  late TextEditingController controller;
  List<Map<String, dynamic>> chatsData = [
    {
      'isPinned': true,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture1,
      'title': AppTexts.chatsTileTitle1,
      'subtitle': AppTexts.chatsSubtitle1,
      'date': AppTexts.chatsDate1,
    },
    {
      'isPinned': true,
      'isMuted': true,
      'image': AppTexts.chatsProfilePicture2,
      'title': AppTexts.chatsTileTitle2,
      'subtitle': AppTexts.chatsSubtitle2,
      'date': AppTexts.chatsDate2,
    },
    {
      'isPinned': true,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture3,
      'title': AppTexts.chatsTileTitle3,
      'subtitle': AppTexts.chatsSubtitle3,
      'date': AppTexts.chatsDate3,
    },
    {
      'isPinned': false,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture4,
      'title': AppTexts.chatsTileTitle4,
      'subtitle': AppTexts.chatsSubtitle4,
      'date': AppTexts.chatsDate4,
    },
    {
      'isPinned': false,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture5,
      'title': AppTexts.chatsTileTitle5,
      'subtitle': AppTexts.chatsSubtitle5,
      'date': AppTexts.chatsDate5,
    },
    {
      'isPinned': false,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture6,
      'title': AppTexts.chatsTileTitle6,
      'subtitle': AppTexts.chatsSubtitle6,
      'date': AppTexts.chatsDate6,
    },
    {
      'isPinned': false,
      'isMuted': false,
      'image': AppTexts.chatsProfilePicture7,
      'title': AppTexts.chatsTileTitle7,
      'subtitle': AppTexts.chatsSubtitle7,
      'date': AppTexts.chatsDate7,
    },
  ];

  List<Map<String, dynamic>> filteredChats = [];

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    filteredChats = List.from(chatsData);
    controller.addListener(_filterChats);
  }

  @override
  void dispose() {
    controller.removeListener(_filterChats);
    controller.dispose();
    super.dispose();
  }

  void _filterChats() {
    setState(() {
      filteredChats = chatsData.where((chat) {
        return chat['title']
                .toLowerCase()
                .contains(controller.text.toLowerCase()) ||
            chat['subtitle']
                .toLowerCase()
                .contains(controller.text.toLowerCase());
      }).toList();
    });
  }

  void _deleteChat(Map<String, dynamic> chatToDelete) {
    setState(() {
      chatsData.remove(chatToDelete);
      filteredChats.remove(chatToDelete);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: ChatsAppBar(controller: controller),
      body: ListView.builder(
        itemCount: filteredChats.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = filteredChats[index];
          return ChatsTile(
            isPinned: chat['isPinned'],
            isMuted: chat['isMuted'],
            image: chat['image'],
            title: chat['title'],
            subtitle: chat['subtitle'],
            date: chat['date'],
            onDelete: (_) => _deleteChat(chat),
          );
        },
      ),
    );
  }
}
