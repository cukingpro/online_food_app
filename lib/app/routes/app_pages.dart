import 'package:get/get.dart';

import 'package:online_food_app/app/modules/home/bindings/home_binding.dart';
import 'package:online_food_app/app/modules/home/views/home_view.dart';
import 'package:online_food_app/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:online_food_app/app/modules/onboarding/views/onboarding_view.dart';
import 'package:online_food_app/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:online_food_app/app/modules/sign_in/views/sign_in_view.dart';
import 'package:online_food_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:online_food_app/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
