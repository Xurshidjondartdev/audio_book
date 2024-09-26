import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_logic.dart';

class SplashView extends StatelessWidget {
  static const String route = "/splash";
  SplashView({super.key});

  final logic = Get.find<SplashLogic>(); // Get orqali SplashLogic inject qilinadi
  final state = Get.find<SplashLogic>().state;

  @override
  Widget build(BuildContext context) {
    logic.startSplash(); // Splashni boshlash uchun chaqiramiz

    return  Scaffold(
      body: Center(
        child: Text("Splash View".tr),
      ),
    );
  }
}
