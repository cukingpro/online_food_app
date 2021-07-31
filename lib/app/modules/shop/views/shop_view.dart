import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/gen/assets.gen.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Placeholder(
              fallbackHeight: 52,
            ),
            const SizedBox(height: 20),
            Placeholder(
              fallbackHeight: 115,
            ),
            const SizedBox(height: 30),
            Placeholder(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Assets.images.redCarrot.svg(
        height: 30,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
