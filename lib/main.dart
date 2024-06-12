// ignore_for_file: use_key_in_widget_constructors

import 'package:cv/view/screen/heders/portfolpages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.nunito().fontFamily),
      darkTheme: ThemeData.dark(),
      home: PortfolioPage(),
    );
  }
}
