// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Web_String.dart';

class Hederbutton extends StatelessWidget {
  final String headname;
  final void Function()? onPressed;

  const Hederbutton({
    super.key,
    this.onPressed,
    required this.headname,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        headname,
        style: TextStyle(
          fontSize: Get.width / 100,
          fontFamily: GoogleFonts.readexPro().fontFamily,
        ),
      ),
    );
  }
}
