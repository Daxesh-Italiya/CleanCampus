import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          leading: SizedBox(),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
