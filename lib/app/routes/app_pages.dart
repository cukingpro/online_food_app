import 'package:get/get.dart';

import 'package:online_food_app/app/modules/account/bindings/account_binding.dart';
import 'package:online_food_app/app/modules/account/views/account_view.dart';
import 'package:online_food_app/app/modules/cart/bindings/cart_binding.dart';
import 'package:online_food_app/app/modules/cart/views/cart_view.dart';
import 'package:online_food_app/app/modules/explore/bindings/explore_binding.dart';
import 'package:online_food_app/app/modules/explore/views/explore_view.dart';
import 'package:online_food_app/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:online_food_app/app/modules/favorite/views/favorite_view.dart';
import 'package:online_food_app/app/modules/home/bindings/home_binding.dart';
import 'package:online_food_app/app/modules/home/views/home_view.dart';
import 'package:online_food_app/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:online_food_app/app/modules/onboarding/views/onboarding_view.dart';
import 'package:online_food_app/app/modules/shop/bindings/shop_binding.dart';
import 'package:online_food_app/app/modules/shop/views/shop_view.dart';
import 'package:online_food_app/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:online_food_app/app/modules/sign_in/views/sign_in_view.dart';
import 'package:online_food_app/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:online_food_app/app/modules/sign_up/views/sign_up_view.dart';
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
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE,
      page: () => ExploreView(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
