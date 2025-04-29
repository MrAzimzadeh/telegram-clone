import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/utils/widgets/custom_switchtile.dart';

class AutoPlayMedia extends StatefulWidget {
  const AutoPlayMedia({super.key});

  @override
  State<AutoPlayMedia> createState() => _AutoPlayMediaState();
}

class _AutoPlayMediaState extends State<AutoPlayMedia> {
  bool gifs = false;
  bool videos = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            AppTexts.dataAutoPlayMedia,
            style: TextStyle(
              color: AppColors.textColor,
              fontFamily: 'SF-Pro-Text',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        7.verticalSpace,
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.dataAutoDownloadGifs,
          value: gifs,
          onChanged: (val) => setState(() => gifs = val),
        ),
        Divider(color: AppColors.dividerLine, height: 1),
        CustomSwitchTile(
          title: AppTexts.dataAutoDownloadVideo,
          value: videos,
          onChanged: (val) => setState(() => videos = val),
        ),
        Divider(color: AppColors.dividerLine, height: 1),
      ],
    );
  }
}
