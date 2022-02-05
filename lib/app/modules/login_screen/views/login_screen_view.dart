import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetWidget<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Spacer(),
              Center(
                child: Image.asset(
                  "assets/splash_logo.png",
                  height: MySize.size150,
                ),
              ),
              Spacer(),
              Container(
                height: MySize.size55,
                margin: EdgeInsets.symmetric(horizontal: MySize.size30!),
                child: getTextField(
                    hintText: "Mobile Number",
                    borderRadius: MySize.size15!,
                    prefixIcon: Icon(Icons.call),
                    textEditingController: controller.mobileController.value),
              ),
              SizedBox(height: MySize.size20),
              Container(
                height: MySize.size55,
                margin: EdgeInsets.symmetric(horizontal: MySize.size30!),
                child: getTextField(
                    hintText: "Password",
                    borderRadius: MySize.size15!,
                    prefixIcon: Icon(Icons.call),
                    textEditingController: controller.mobileController.value),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
