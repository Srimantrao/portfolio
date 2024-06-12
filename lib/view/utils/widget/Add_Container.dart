// ignore_for_file: prefer_const_constructors

import 'package:cv/view/utils/Web_Icons.dart';
import 'package:cv/view/utils/Web_String.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AddContainer extends StatelessWidget {
  final String icons;
  final String text;

  const AddContainer({
    super.key,
    required this.icons,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 8,
      height: Get.height / 15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Get.width / 150),
          border: Border.all(
            color: WebColor.textcolor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icons, scale: 4),
          SizedBox(width: Get.width / 150),
          Text(text),
        ],
      ),
    );
  }
}
