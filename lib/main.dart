import 'package:audio_book/core/manager/setting_contoller.dart';
import 'package:audio_book/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(SettingsController(), permanent: true);
  runApp(const MyApp());
}
