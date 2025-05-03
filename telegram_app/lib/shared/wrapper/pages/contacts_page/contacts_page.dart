import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/models/contacts_model.dart';
import 'package:telegram_app/shared/widgets/three_feature_app_bar.dart';
import 'package:telegram_app/ui/screens/contacts_screen/widgets/contacts_list_column.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsPage> {
  final List<ContactsModel> contacts = [
    ContactsModel(name: 'Add People Nearby'),
    ContactsModel(name: 'Invite Friends'),
    ContactsModel(name: 'Joshua Lawrence', online: true),
    ContactsModel(name: 'Andrew Parker', online: true),
    ContactsModel(name: 'Martin Randolph', online: true),
    ContactsModel(name: 'Kieron Dostson', lastSeen: '10 minutes ago'),
    ContactsModel(name: 'Zack John', lastSeen: '25 minutes ago'),
    ContactsModel(name: 'Karen Castillo', lastSeen: '1 hour ago')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.elmarinBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ThreeFeatureAppBar(
          title: AppTexts.contacts,
          suffix: Icon(CupertinoIcons.add),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              if (5 <= index) {
                return ContactsListColumn(
                  contact: contacts[index],
                  index: index,
                  baseDr: 'chat_profile',
                );
              }
              return ContactsListColumn(
                contact: contacts[index],
                index: index,
                baseDr: 'chat_image',
              );
            }),
      ),
    );
  }
}
