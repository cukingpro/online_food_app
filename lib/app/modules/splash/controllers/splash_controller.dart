import 'package:get/get.dart';
import 'package:online_food_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.offNamed(Routes.ONBOARDING);
      },
    );
  }

  @override
  void onClose() {}
}
