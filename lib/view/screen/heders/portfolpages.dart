// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:cv/view/utils/Web_String.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/Web_Constance.dart';
import '../../utils/widget/HederButton.dart';
import '../sections/aboutmesection.dart';
import '../sections/myprojectsection.dart';
import '../sections/profilesection.dart';
import '../sections/whatIcando.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          Hederbutton(
            headname: Heder_String.Resume,
            onPressed: () => scrollToSection(profileKey),
          ),
          Hederbutton(
            onPressed: () => scrollToSection(aboutKey),
            headname: Heder_String.About,
          ),
          Hederbutton(
            onPressed: () => scrollToSection(servicesKey),
            headname: Heder_String.Services,
          ),
          Hederbutton(
            headname: Heder_String.Recommendation,
            onPressed: () => scrollToSection(recommendationsKey),
          ),
          SizedBox(width: Get.width / 50),
          Container(
            height: Get.height / 20,
            width: Get.width / 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width / 160),
              gradient: LinearGradient(colors: [
                WebColor.Bluecolor,
                WebColor.parpalcolor,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Center(
              child: Text(
                Heder_String.Resume,
                style: TextStyle(
                  color: WebColor.textcolor,
                ),
              ),
            ),
          ),
          SizedBox(width: Get.width / 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileSection(),
            AboutMeSection(),
            WhatICanDoSection(),
            MyProjectsSection(),
          ],
        ),
      ),
    );
  }
}
