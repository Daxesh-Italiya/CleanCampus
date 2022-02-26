import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:clean_campus/app/routes/app_pages.dart';
import 'package:clean_campus/utilities/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/add_complain_screen_controller.dart';

class AddComplainScreenView extends GetWidget<AddComplainScreenController> {
  Blocks blocks = Blocks.aBlock;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: MySize.getScaledSizeWidth(30),
              top: MySize.size10!,
              right: MySize.getScaledSizeWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: MySize.getScaledSizeWidth(77)),
                    child: Text(
                      "Add Complain",
                      style: TextStyle(
                          fontSize: MySize.size18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size41,
              ),
              getRadio(
                  value: Blocks.aBlock, groupValue: blocks, title: "A block"),
              getRadio(
                  value: Blocks.bBlock, groupValue: blocks, title: "B block"),
              getRadio(
                  value: Blocks.cBlock, groupValue: blocks, title: "C block"),
              getRadio(
                  value: Blocks.dBlock, groupValue: blocks, title: "D block"),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(20),
                    bottom: MySize.size7!,
                    top: MySize.size41!),
                child: Text(
                  "Enter exact location",
                  style: TextStyle(fontSize: MySize.size17),
                ),
              ),
              getTextField(),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.getScaledSizeWidth(20),
                    bottom: MySize.size7!,
                    top: MySize.size34!),
                child: Text(
                  "Remark (Optional)",
                  style: TextStyle(fontSize: MySize.size17),
                ),
              ),
              getTextField(),
              Padding(
                padding: EdgeInsets.only(
                    top: MySize.size41!, left: MySize.getScaledSizeWidth(139)),
                child: SvgPicture.asset("assets/uploadImage.svg"),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MySize.size7!, left: MySize.getScaledSizeWidth(110)),
                child: Text(
                  "Upload image",
                  style: TextStyle(fontSize: MySize.size17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MySize.getScaledSizeHeight(86),
                    bottom: MySize.getScaledSizeHeight(86),
                    left: MySize.getScaledSizeWidth(45),
                    right: MySize.getScaledSizeWidth(44)),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: Get.width,
                    height: MySize.getScaledSizeHeight(51),
                    padding: EdgeInsets.symmetric(
                        horizontal: MySize.getScaledSizeWidth(20)),
                    decoration: BoxDecoration(
                      color: Color(0xff191E95),
                      borderRadius: BorderRadius.circular(MySize.size12!),
                    ),
                    child: Center(
                      child: Text(
                        "Submit Complain",
                        style: TextStyle(
                            fontSize: MySize.size22, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  getRadio({
    required Blocks value,
    required Blocks groupValue,
    required String title,
  }) {
    return Row(
      children: [
        Radio<Blocks>(
            value: value,
            groupValue: groupValue,
            onChanged: (Blocks? val) {
              groupValue = val!;
            }),
        Text(
          title,
          style: TextStyle(fontSize: MySize.size18),
        ),
      ],
    );
  }
}

enum Blocks { aBlock, bBlock, cBlock, dBlock }
