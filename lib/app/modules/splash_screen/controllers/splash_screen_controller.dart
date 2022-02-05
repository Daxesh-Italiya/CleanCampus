import 'dart:async';

import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    MySize().init(Get.context!);
    Timer(
      Duration(seconds: 5),
      () => Get.toNamed(Routes.LOGIN_SCREEN),
    );
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
