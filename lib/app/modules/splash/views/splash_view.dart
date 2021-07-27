import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/gen/assets.gen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Assets.images.logosvg.svg(),
        ),
      ),
    );
  }
}
