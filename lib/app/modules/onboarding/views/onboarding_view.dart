import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/app/widgets/long_button.dart';
import 'package:online_food_app/core/themes/text_styles.dart';
import 'package:online_food_app/gen/assets.gen.dart';
import 'package:online_food_app/generated/locales.g.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(14, 23, 39, 0),
                  Color.fromRGBO(133, 133, 133, 1),
                ],
              ).createShader(
                  Rect.fromLTRB(0, rect.height / 2, rect.width, rect.height));
            },
            blendMode: BlendMode.overlay,
            child: Container(
              height: Get.size.height,
              width: Get.size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0.23, 0),
                  image: AssetImage(Assets.images.onboarding.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: Get.height / 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Assets.images.carrot.svg(),
                    SizedBox(height: 35),
                    Text(
                      LocaleKeys.welcome.tr,
                      textAlign: TextAlign.center,
                      style: TextStyles.heading,
                    ),
                    SizedBox(height: 20),
                    Text(
                      LocaleKeys.get_your_groceries.tr,
                      textAlign: TextAlign.center,
                      style: TextStyles.description,
                    ),
                    SizedBox(height: 40),
                    LongButton(
                      text: LocaleKeys.get_started.tr,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
