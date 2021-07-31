import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final obscurePassword = true.obs;
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
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
