import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/core/themes/app_themes.dart';
import 'package:online_food_app/generated/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      theme: AppThemes.light,
    ),
  );
}
