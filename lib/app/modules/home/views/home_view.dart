import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/app/modules/account/views/account_view.dart';
import 'package:online_food_app/app/modules/cart/views/cart_view.dart';
import 'package:online_food_app/app/modules/explore/views/explore_view.dart';
import 'package:online_food_app/app/modules/favorite/views/favorite_view.dart';
import 'package:online_food_app/app/modules/shop/views/shop_view.dart';
import 'package:online_food_app/generated/locales.g.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _pageList = [
    ShopView(),
    ExploreView(),
    CartView(),
    FavoriteView(),
    AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: Obx(() => _pageList[controller.currentPageIndex.value]),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Obx(
      () {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: LocaleKeys.shop.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_outlined),
              label: LocaleKeys.explore.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: LocaleKeys.cart.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: LocaleKeys.favorite.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: LocaleKeys.account.tr,
            ),
          ],
          onTap: (index) {
            controller.currentPageIndex.value = index;
          },
          currentIndex: controller.currentPageIndex.value,
        );
      },
    );
  }
}
