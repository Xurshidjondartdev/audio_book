import 'package:audio_book/features/splash/splash_logic_impl.dart';
import 'package:get/get.dart';
import 'splash_logic.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // SplashLogic ni lazily Put qilish
    Get.lazyPut<SplashLogic>(() => SplashLogicImpl());
  }
}
