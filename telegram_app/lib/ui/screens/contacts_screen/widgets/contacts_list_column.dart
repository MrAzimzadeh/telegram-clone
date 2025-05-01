import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/models/contacts_model.dart';
import 'package:telegram_app/ui/screens/contacts_screen/widgets/contacts_tile.dart';

class ContactsListColumn extends StatelessWidget {
  const ContactsListColumn(
      {super.key,
      required this.contact,
      required this.index,
      required this.baseDr});
  final ContactsModel contact;
  final int index;
  final String baseDr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactsTile(
            photoDr: '$baseDr$index.png',
            name: contact.name!,
            lastSeen: contact.lastSeen,
            online: contact.online),
        Divider(
          height: 1.h,
          thickness: 0.65,
          color: Colors.grey,
          indent: 50.w,
        )
      ],
    );
  }
}
