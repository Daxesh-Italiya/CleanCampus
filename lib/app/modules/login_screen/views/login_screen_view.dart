import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetWidget<LoginScreenController> {
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
                  height: MySize.getScaledSizeHeight(179),
                ),

                Container(
                  height: MySize.size52,
                  child: getTextField(
                      hintText: "Mobile Number",
                      borderRadius: MySize.size15!,
                      prefixIcon: Padding(
                        child: Icon(Icons.call),
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size15!),
                      ),
                      size: MySize.size52,
                      textEditingController: controller.mobileController.value),
                ),
                SizedBox(height: MySize.size18),
                // Container(
                //   height: MySize.size55,
                //   margin: EdgeInsets.symmetric(horizontal: MySize.size30!),
                //   child: getTextField(
                //       hintText: "Email ID",
                //       borderRadius: MySize.size15!,
                //       prefixIcon: Icon(Icons.email),
                //       textEditingController: controller.mobileController.value),
                // ),

                Container(
                  height: MySize.size55,
                  child: getTextField(
                      hintText: "Password",
                      borderRadius: MySize.size15!,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size15!),
                        child: SvgPicture.asset(
                          "assets/lock.svg",
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size15!),
                        child: SvgPicture.asset(
                          "assets/eye.svg",
                        ),
                      ),
                      size: MySize.size52,
                      textEditingController:
                          controller.passwordController.value),
                ),
                SizedBox(height: MySize.size9),
                Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MySize.getScaledSizeWidth(13),
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.OTP_SCREEN);
                        },
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: MySize.size14,
                              color: Colors.blue.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size83),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.HOME_SCREEN);
                  },
                  child: Container(
                    width: MySize.getScaledSizeWidth(173),
                    height: MySize.getScaledSizeHeight(51),
                    decoration: BoxDecoration(
                      color: Color(0xff191E95),
                      borderRadius: BorderRadius.circular(MySize.size12!),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: MySize.size22, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MySize.size27),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: MySize.size16),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: MySize.getScaledSizeWidth(15)),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.SIGN_UP_SCREEN);
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: MySize.size16, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
