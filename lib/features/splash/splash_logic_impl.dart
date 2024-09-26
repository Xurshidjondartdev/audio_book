import 'package:audio_book/features/main/main_view.dart';
import 'package:audio_book/features/splash/splash_logic.dart';
import 'package:audio_book/features/splash/splash_state.dart';
import 'package:get/get.dart';

class SplashLogicImpl extends GetxController implements SplashLogic {
  @override
  SplashState state = SplashState();

  @override
  void startSplash() {
    // 3 soniya kutib, asosiy sahifaga o'tamiz
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Get.offAll(const MainView()); // Bu yerda Get.to o'rniga Get.offAll ishlatilgan
    });
  }
}
