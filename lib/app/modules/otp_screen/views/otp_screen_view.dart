import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetWidget<OtpScreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: MySize.size102),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(97),
                    right: MySize.getScaledSizeWidth(97)),
                child: Text(
                  "OTP has been sent to",
                  style: TextStyle(fontSize: MySize.size18, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(97),
                    right: MySize.getScaledSizeWidth(97)),
                child: Text(
                  "+91 9999999999",
                  style: TextStyle(fontSize: MySize.size18),
                ),
              ),
              SizedBox(height: MySize.size37),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: MySize.getScaledSizeWidth(339),
                      alignment: Alignment.center,
                      child: PinPut(
                        fieldsCount: 6,
                        eachFieldWidth: MySize.getScaledSizeWidth(45),
                        // eachFieldMargin:
                        //     EdgeInsets.only(right: MySize.getScaledSizeWidth(13)),
                        onSubmit: (String pin) => {},
                        focusNode: controller.pinPutFocusNode,
                        controller: controller.pinPutController,
                        submittedFieldDecoration:
                            controller.pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        selectedFieldDecoration: controller.pinPutDecoration,
                        followingFieldDecoration:
                            controller.pinPutDecoration.copyWith(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.grey.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MySize.getScaledSizeHeight(138)),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.CHANGE_PASSWORD_SCREEN);
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
                      "Verify Code",
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
