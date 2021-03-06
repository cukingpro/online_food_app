import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var obscurePassword = true.obs;
  final isEmailValid = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {
      isEmailValid.value = GetUtils.isEmail(emailController.text);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
