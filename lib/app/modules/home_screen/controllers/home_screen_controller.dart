import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeScreenController
  final count = 0.obs;
  TabController? tabController;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
