import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_screen_controller.dart';

class SignUpScreenView extends GetWidget<SignUpScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: MySize.getScaledSizeWidth(47)),
            height: MySize.screenHeight,
            width: MySize.screenWidth,
            child: Column(
              children: [
                SizedBox(
                  height: MySize.size54,
                ),
                Container(
                  height: MySize.size129,
                  width: MySize.getScaledSizeWidth(175),
                  child: Center(
                    child: Image.asset(
                      "assets/splash_logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: MySize.size100,
                ),
                Container(
                  height: MySize.size52,
                  child: getTextField(
                      hintText: "UserName",
                      borderRadius: MySize.size15!,
                      size: MySize.size52,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size15!),
                        child: SvgPicture.asset(
                          "assets/user_black_icon.svg",
                        ),
                      ),
                      textEditingController:
                          controller.userNameController.value),
                ),
                SizedBox(
                  height: MySize.size16,
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
                      textEditingController:
                          controller.mobileNoController.value),
                ),
                SizedBox(
                  height: MySize.size16,
                ),
                Container(
                  height: MySize.size52,
                  child: getTextField(
                      hintText: "Email ID",
                      borderRadius: MySize.size15!,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size18!),
                        child: SvgPicture.asset(
                          "assets/email.svg",
                        ),
                      ),
                      size: MySize.size52,
                      textEditingController: controller.emailController.value),
                ),
                SizedBox(
                  height: MySize.size16,
                ),
                Container(
                  height: MySize.size55,
                  child: getTextField(
                      hintText: "Password",
                      borderRadius: MySize.size15!,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MySize.size10!,
                            vertical: MySize.size16!),
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
                SizedBox(
                  height: MySize.getScaledSizeHeight(106),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.LOGIN_SCREEN);
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
                        "Sign Up",
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
                      "Already have an account?",
                      style: TextStyle(fontSize: MySize.size16),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: MySize.getScaledSizeWidth(17)),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.SIGN_UP_SCREEN);
                        },
                        child: Text(
                          "Sign in",
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
