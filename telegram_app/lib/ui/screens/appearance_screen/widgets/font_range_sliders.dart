import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';

class FontRangeSliders extends StatefulWidget {
  const FontRangeSliders({super.key});

  @override
  State<FontRangeSliders> createState() => _FontRangeSlidersState();
}

class _FontRangeSlidersState extends State<FontRangeSliders> {
  RangeValues _currentRangeValues = const RangeValues(40, 40);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            AppTexts.appearanceTextSizeTitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textColor,
            ),
          ),
        ),
        7.verticalSpace,
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60.h,
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  AppTexts.appearanceTextSize,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.light,
                  ),
                ),
                Expanded(
                  child: RangeSlider(
                    values: _currentRangeValues,
                    max: 100,
                    divisions: 8,
                    activeColor: AppColors.light,
                    inactiveColor: AppColors.light.withOpacity(0.3),
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ),
                Text(
                  AppTexts.appearanceTextSize,
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Text',
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.light,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
