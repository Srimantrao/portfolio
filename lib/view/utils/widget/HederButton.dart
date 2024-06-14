// ignore_for_file: file_names, non_constant_identifier_names

import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Hederbutton extends StatefulWidget {
  final String headname;
  final void Function()? onPressed;

  const Hederbutton({
    super.key,
    this.onPressed,
    required this.headname,
  });

  @override
  State<Hederbutton> createState() => _HederbuttonState();
}

class _HederbuttonState extends State<Hederbutton> {
  bool mouse_hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => mouse_hover = true),
      onExit: (event) => setState(() => mouse_hover = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width / 150),
          decoration: BoxDecoration(
            color: (mouse_hover) ? Colors.transparent : Colors.transparent,
          ),
          child: Text(
            widget.headname,
            style: TextStyle(
              color: (mouse_hover) ? WebColor.bodercolor : WebColor.liteblue,
              fontSize: Get.width / 100,
              fontFamily: GoogleFonts.readexPro().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
