import 'package:audio_book/core/manager/setting_contoller.dart';
import 'package:audio_book/features/main/main_logic_impl.dart';
import 'package:audio_book/my_app.dart';
import 'package:audio_book/setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await setup();
  await GetStorage.init();
  Get.put(SettingsController(), permanent: true);
  Get.put(MainLogicImpl(), permanent: true);
  runApp(const MyApp());
}
