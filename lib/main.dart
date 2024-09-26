import 'package:audio_book/core/manager/setting_contoller.dart';
import 'package:audio_book/features/main/main_logic.dart';
import 'package:audio_book/features/main/main_logic_impl.dart';
import 'package:audio_book/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  Get.put(SettingsController(), permanent: true);
  Get.put<MainLogic>(MainLogicImpl(), permanent: true);
  runApp(const MyApp());
}
