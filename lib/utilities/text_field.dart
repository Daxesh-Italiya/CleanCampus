import 'package:clean_campus/app/constants/sizeConstant.dart';
import 'package:flutter/material.dart';

TextFormField getTextField({
  String? hintText,
  TextEditingController? textEditingController,
  Widget? prefixIcon,
  double? borderRadius,
}) {
  return TextFormField(
    controller: textEditingController,
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              (borderRadius == null) ? MySize.size15! : borderRadius),
        ),
        prefixIcon: prefixIcon,
        hintText: hintText),
  );
}
