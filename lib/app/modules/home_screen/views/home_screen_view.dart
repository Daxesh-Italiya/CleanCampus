import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetWidget<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: TabBar(
                tabs: [
                  Text("dd"),
                  Text("dd"),
                ],
              ),
            ),
            TabBarView(
              controller: controller.tabController,
              children: [
                Container(),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
