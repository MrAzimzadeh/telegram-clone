import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegram_app/constants/app_colors.dart';
import 'package:telegram_app/constants/app_texts.dart';
import 'package:telegram_app/ui/screens/languages_screen/widgets/languages_setting_tile.dart';
import 'package:telegram_app/utils/widgets/custom_search_bar.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> allLanguages = [
    AppTexts.languageEnglish,
    AppTexts.languageArabic,
    AppTexts.languageCatalan,
    AppTexts.languageDutch,
    AppTexts.languageFrench,
    AppTexts.languageGerman,
    AppTexts.languageIndonesian,
    AppTexts.languageItalian,
    AppTexts.languageKorean,
    AppTexts.languagMalay,
    AppTexts.languagePersian,
    AppTexts.languagePortuguese,
  ];

  final List<String> subtitles = [
    AppTexts.languageCountryEn,
    AppTexts.languageCountryAr,
    AppTexts.languageCountryCa,
    AppTexts.languageCountryNl,
    AppTexts.languageCountryFr,
    AppTexts.languageCountryDe,
    AppTexts.languageCountryId,
    AppTexts.languageCountryIt,
    AppTexts.languageCountryKo,
    AppTexts.languageCountryMs,
    AppTexts.languageCountryFa,
    AppTexts.languageCountryBr,
  ];

  List<String> filteredLanguages = [];
  final String selectedLanguage = AppTexts.languageEnglish;

  @override
  void initState() {
    super.initState();
    filteredLanguages = List.from(allLanguages);
    _searchController.addListener(_filterLanguages);
  }

  void _filterLanguages() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredLanguages = allLanguages
          .where((lang) => lang.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            16.verticalSpace,
            CustomSearchBar(controller: _searchController),
            16.verticalSpace,
            Expanded(
              child: ListView.builder(
                itemCount: filteredLanguages.length,
                itemBuilder: (context, index) {
                  final language = filteredLanguages[index];
                  final subtitleIndex = allLanguages.indexOf(language);

                  return Column(
                    children: [
                      Divider(
                        color: AppColors.dividerLine,
                        height: 1,
                      ),
                      LanguagesSettingTile(
                        title: language,
                        subtitle: subtitleIndex != -1
                            ? subtitles[subtitleIndex]
                            : null,
                        icon: selectedLanguage == language
                            ? Icon(Icons.check, color: AppColors.iconColor)
                            : null,
                      ),
                      Divider(
                        color: AppColors.dividerLine,
                        height: 1,
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
