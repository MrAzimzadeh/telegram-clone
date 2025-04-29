import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';

class LanguagesTile extends StatefulWidget {
  const LanguagesTile(
      {Key? key, required this.languageName, this.isSelected = false})
      : super(key: key);

  final bool isSelected;
  final String languageName;

  @override
  State<LanguagesTile> createState() => _LanguagesTileState();
}

class _LanguagesTileState extends State<LanguagesTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.languageName,
        style: TextStyle(
          fontFamily: 'SF-Pro-Text',
          fontSize: 17.sp,
          color: AppColors.light,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: widget.isSelected
          ? Icon(
              Icons.check,
              color: AppColors.iconColor,
            )
          : null,
      onTap: () {},
    );
  }
}
