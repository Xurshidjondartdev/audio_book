import 'package:audio_book/features/main/main_binding.dart';
import 'package:audio_book/features/main/main_view.dart';
import 'package:audio_book/features/splash/splash_binding.dart';
import 'package:audio_book/features/splash/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final List<GetPage> routes = [
  GetPage(
    name: SplashView.route,
    page: () => SplashView(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: MainView.route,
    page: () => MainView(),
    binding: MainBinding(),
  ),
];
