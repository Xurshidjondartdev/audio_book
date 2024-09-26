import 'package:audio_book/core/manager/setting_contoller.dart';
import 'package:audio_book/features/main/main_logic.dart';
import 'package:audio_book/localization/languages.dart';
import 'package:audio_book/ui/utils/app_color.dart';
import 'package:audio_book/ui/utils/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  static const String route = "/main";
  MainView({super.key});

  final logic = Get.find<MainLogic>();
  final state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    final settingsController = Get.find<SettingsController>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Obx(
            () => DropdownButton<String>(
              value: settingsController.selectedLanguage.value,
              icon: const Icon(
                Icons.g_translate,
                color: AppColor.basic10,
              ),
              dropdownColor: Theme.of(context).primaryColor,
              items: appLanguages.map((language) {
                return DropdownMenuItem<String>(
                  value: language.symbol,
                  child: Text(language.languageNameInEnglish, style: AppTypography.bodyParagraph1), // Change language.language to language.languageNameInEnglish
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  settingsController.changeLanguage(newValue);
                }
              },
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.dark_mode,
            color: AppColor.basic10,
          ),
        ),
        title: Text('home_title'.tr, style: AppTypography.title3), // Use localization key instead of hardcoded text
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Hello, Book'.tr,
          style: AppTypography.accentTitle,
        ),
      ),
    );
  }
}
