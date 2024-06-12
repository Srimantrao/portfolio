// ignore_for_file: file_names, non_constant_identifier_names

import 'package:cv/view/utils/Web_String.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Skillconatiner extends StatefulWidget {
  final String Skillname;

  const Skillconatiner({super.key, required this.Skillname});

  @override
  State<Skillconatiner> createState() => _SkillconatinerState();
}

class _SkillconatinerState extends State<Skillconatiner> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Get.width / 100,
          vertical: Get.height / 100,
        ),
        width: Get.width / 15,
        height: Get.height / 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Get.width/50),
          border: Border.all(
            color: _isHovered
                ? Colors.blueAccent
                : WebColor.liteblue.withOpacity(0.9),
          ),
        ),
        child: Center(
          child: Text(
            widget.Skillname,
            style: TextStyle(
              color: _isHovered
                  ? Colors.blueAccent
                  : WebColor.liteblue.withOpacity(0.9),
            ),
          ),
        ),
      ),
    );
  }
}
