import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/app/modules/shop/widgets/carousel.dart';
import 'package:online_food_app/app/widgets/search_bar.dart';
import 'package:online_food_app/gen/assets.gen.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            _buildAppBar(),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverToBoxAdapter(
                child: Carousel(
                  imageList: [
                    'https://picsum.photos/366/115',
                    'https://picsum.photos/366/115',
                    'https://picsum.photos/366/115',
                    'https://picsum.photos/366/115',
                    'https://picsum.photos/366/115',
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: true,
      collapsedHeight: 80,
      title: Assets.images.redCarrot.svg(height: 30),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: SearchBar().paddingSymmetric(horizontal: 25),
      ),
    );
  }
}
