import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetWidget<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: controller.scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xff191E95),
            title: Text('HomeView'),
            leading: IconButton(
              onPressed: () {
                controller.toggleDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: MySize.size32,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: MySize.size13!),
                child: SvgPicture.asset("assets/userProfile.svg"),
              ),
            ],
            centerTitle: true,
          ),
          drawer: Container(
            margin: EdgeInsets.only(right: MySize.getScaledSizeHeight(109)),
            child: Drawer(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: MySize.getScaledSizeWidth(18),
                          top: MySize.size17!,
                          left: MySize.getScaledSizeWidth(239)),
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    SizedBox(height: MySize.size19),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MySize.getScaledSizeWidth(35),
                          right: MySize.getScaledSizeWidth(159)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About App",
                            style: TextStyle(fontSize: MySize.size18),
                          ),
                          SizedBox(height: MySize.size17),
                          Text(
                            "Feedback",
                            style: TextStyle(fontSize: MySize.size18),
                          ),
                          SizedBox(height: MySize.size17),
                          Text(
                            "About Us",
                            style: TextStyle(fontSize: MySize.size18),
                          ),
                          SizedBox(height: MySize.size17),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Color(0xff95DD82),
                  controller: controller.tabController,
                  tabs: [
                    Tab(
                      child: Text(
                        "Complaint",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Reviewed",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(top: MySize.size35!),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(
                                        aspectRatio:
                                            MySize.getScaledSizeWidth(339) /
                                                MySize.getScaledSizeHeight(149),
                                        viewportFraction: 1,
                                        initialPage: 0,
                                        enableInfiniteScroll: false,
                                        reverse: false,
                                        autoPlay: false,
                                        autoPlayInterval: Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 800),
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enlargeCenterPage: true,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          controller.currentIndex.value = index;
                                          controller.currentIndex.refresh();
                                        }),
                                    items: controller.cardList.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            height:
                                                MySize.getScaledSizeHeight(149),
                                            width:
                                                MySize.getScaledSizeWidth(339),
                                            decoration: BoxDecoration(
                                              color: Color(0xff95DD82),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MySize.size10!),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  Obx(() {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: controller.map<Widget>(
                                          controller.cardList, (index, url) {
                                        return Container(
                                          width: 10.0,
                                          height: 10.0,
                                          margin: EdgeInsets.symmetric(
                                              vertical:
                                                  MySize.getScaledSizeHeight(7),
                                              horizontal:
                                                  MySize.getScaledSizeWidth(5)),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: (controller.currentIndex ==
                                                      index)
                                                  ? Color(0xff95DD82)
                                                  : Colors.white,
                                              border: Border.all(
                                                  color: Color(0xff95DD82))),
                                        );
                                      }),
                                    );
                                  }),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(32),
                                      top: MySize.size15!,
                                    ),
                                    child: Text(
                                      "Block A",
                                      style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff707070)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(25),
                                      top: MySize.size15!,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            color: Color(0xff707070)),
                                        Text(
                                          "Block A Playground",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(30),
                                      right: MySize.getScaledSizeWidth(25),
                                      top: MySize.size15!,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "09-06-2021",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                        Text(
                                          "Block A Playground",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: MySize.size38!),
                                  Divider(
                                    indent: MySize.getScaledSizeWidth(20),
                                    endIndent: MySize.getScaledSizeWidth(20),
                                    color: Colors.grey,
                                    thickness: MySize.size1,
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: 100),
                      ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(top: MySize.size35!),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(
                                        aspectRatio:
                                            MySize.getScaledSizeWidth(339) /
                                                MySize.getScaledSizeHeight(149),
                                        viewportFraction: 1,
                                        initialPage: 0,
                                        enableInfiniteScroll: false,
                                        reverse: false,
                                        autoPlay: false,
                                        autoPlayInterval: Duration(seconds: 3),
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 800),
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enlargeCenterPage: true,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          controller.currentIndex.value = index;
                                        }),
                                    items: controller.cardList.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            height:
                                                MySize.getScaledSizeHeight(149),
                                            width:
                                                MySize.getScaledSizeWidth(339),
                                            decoration: BoxDecoration(
                                              color: Color(0xff95DD82),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      MySize.size10!),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  Obx(() {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: controller.map<Widget>(
                                          controller.cardList, (index, url) {
                                        return Container(
                                          width: 10.0,
                                          height: 10.0,
                                          margin: EdgeInsets.symmetric(
                                              vertical:
                                                  MySize.getScaledSizeHeight(7),
                                              horizontal:
                                                  MySize.getScaledSizeWidth(5)),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: (controller.currentIndex ==
                                                      index)
                                                  ? Color(0xff95DD82)
                                                  : Colors.white,
                                              border: Border.all(
                                                  color: Color(0xff95DD82))),
                                        );
                                      }),
                                    );
                                  }),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(32),
                                      top: MySize.size15!,
                                    ),
                                    child: Text(
                                      "Block A",
                                      style: TextStyle(
                                          fontSize: MySize.size16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff707070)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(25),
                                      top: MySize.size15!,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            color: Color(0xff707070)),
                                        Text(
                                          "Block A Playground",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: MySize.getScaledSizeWidth(30),
                                      right: MySize.getScaledSizeWidth(25),
                                      top: MySize.size15!,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "09-06-2021",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                        Text(
                                          "Block A Playground",
                                          style: TextStyle(
                                              fontSize: MySize.size16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: MySize.size38!),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: MySize.getScaledSizeWidth(136)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            MySize.size13!),
                                        border: Border.all(
                                          color: Color(0xff95DD82),
                                        ),
                                      ),
                                      height: MySize.getScaledSizeHeight(39),
                                      width: MySize.getScaledSizeWidth(119),
                                      child: Text(
                                        "Done",
                                        style: TextStyle(
                                            color: Color(0xff95DD82),
                                            fontWeight: FontWeight.bold,
                                            fontSize: MySize.size16),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(height: MySize.size38!),
                                  Divider(
                                    indent: MySize.getScaledSizeWidth(20),
                                    endIndent: MySize.getScaledSizeWidth(20),
                                    color: Colors.grey,
                                    thickness: MySize.size1,
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 2,
            onPressed: () {
              Get.toNamed(Routes.ADD_COMPLAIN_SCREEN);
            },
            child: Icon(
              Icons.add,
              color: Color(0xff191E95),
              size: MySize.size50,
            ),
          ),
        ),
      ),
    );
  }
}
