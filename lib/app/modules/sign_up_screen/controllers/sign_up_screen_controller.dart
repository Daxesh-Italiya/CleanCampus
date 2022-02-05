import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  //TODO: Implement SignUpScreenController
  Rx<TextEditingController> userNameController = TextEditingController().obs;
  Rx<TextEditingController> mobileNoController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
