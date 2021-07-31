import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_food_app/app/routes/app_pages.dart';
import 'package:online_food_app/app/widgets/custom_text_field.dart';
import 'package:online_food_app/app/widgets/long_button.dart';
import 'package:online_food_app/core/themes/text_styles.dart';
import 'package:online_food_app/core/values/colors.dart';
import 'package:online_food_app/gen/assets.gen.dart';
import 'package:online_food_app/generated/locales.g.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          width: Get.size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Assets.images.redCarrot.svg(),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(LocaleKeys.sign_up.tr, style: TextStyles.header),
                  const SizedBox(height: 15),
                  Text(LocaleKeys.sign_up_description.tr,
                      style: TextStyles.description),
                ],
              ),
              const SizedBox(height: 40),
              CustomTextField(label: LocaleKeys.username.tr),
              const SizedBox(height: 40),
              Obx(
                () => CustomTextField(
                  label: LocaleKeys.email.tr,
                  controller: controller.emailController,
                  suffix: controller.isEmailValid.value
                      ? Icon(
                          Icons.done,
                          color: AppColors.green,
                        )
                      : null,
                ),
              ),
              const SizedBox(height: 40),
              Obx(
                () => CustomTextField(
                  label: LocaleKeys.password.tr,
                  obscureText: controller.obscurePassword.value,
                  suffix: InkWell(
                    onTap: () {
                      controller.obscurePassword.toggle();
                    },
                    child: Icon(controller.obscurePassword.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.tos_and_pp.tr,
                style: TextStyles.description,
              ),
              const SizedBox(height: 30),
              LongButton(
                onPressed: () {},
                text: LocaleKeys.sign_in.tr,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(LocaleKeys.already_have_an_account.tr),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: AppColors.green,
                    ),
                    onPressed: () {
                      Get.offAllNamed(Routes.SIGN_UP);
                    },
                    child: Text(LocaleKeys.sign_in.tr),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
