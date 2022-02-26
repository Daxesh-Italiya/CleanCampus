import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/change_password_screen_controller.dart';

class ChangePasswordScreenView
    extends GetWidget<ChangePasswordScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(47)),
          height: MySize.screenHeight,
          width: MySize.screenWidth,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MySize.getScaledSizeHeight(57)),
                child: Container(
                  height: MySize.size129,
                  width: MySize.getScaledSizeWidth(175),
                  child: Center(
                    child: Image.asset(
                      "assets/splash_logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.getScaledSizeHeight(195),
              ),
              Container(
                height: MySize.size55,
                child: getTextField(
                  hintText: "New password",
                  borderRadius: MySize.size15!,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.size10!, vertical: MySize.size15!),
                    child: SvgPicture.asset(
                      "assets/lock.svg",
                    ),
                  ),
                  size: MySize.size52,
                ),
              ),
              SizedBox(height: MySize.size18),
              Container(
                height: MySize.size55,
                child: getTextField(
                  hintText: "Confirm password",
                  borderRadius: MySize.size15!,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.size10!, vertical: MySize.size15!),
                    child: SvgPicture.asset(
                      "assets/lock.svg",
                    ),
                  ),
                  size: MySize.size52,
                ),
              ),
              SizedBox(height: MySize.size90),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.HOME_SCREEN);
                },
                child: Container(
                  width: MySize.getScaledSizeWidth(241),
                  height: MySize.getScaledSizeHeight(51),
                  decoration: BoxDecoration(
                    color: Color(0xff191E95),
                    borderRadius: BorderRadius.circular(MySize.size12!),
                  ),
                  child: Center(
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                          fontSize: MySize.size22, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
