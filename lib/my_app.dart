import 'package:audio_book/core/config/initial_bilding.dart';
import 'package:audio_book/core/config/routs.dart';
import 'package:audio_book/core/manager/setting_contoller.dart';
import 'package:audio_book/features/splash/splash_view.dart';
import 'package:audio_book/localization/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsController = Get.find<SettingsController>();
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData(
            fontFamily: "Bold",
            brightness: Brightness.dark,
          ),
          theme: ThemeData(
            fontFamily: "Bold",
            brightness: Brightness.light,
            useMaterial3: true,
          ),
          themeMode: settingsController.isDarkTheme.value ? ThemeMode.dark : ThemeMode.light,
          getPages: routes,
          translations: AppTranslations(),
          locale: Locale(settingsController.selectedLanguage.value),
          fallbackLocale: const Locale("uz"),
          initialBinding: InitialBinding(),
          initialRoute: SplashView.route,
        );
      },
    );
  }
}
