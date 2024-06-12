// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/controller/Animation.dart';
import 'package:cv/view/utils/Web_Constance.dart';
import 'package:cv/view/utils/Web_String.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:cv/view/utils/Web_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSection extends StatelessWidget {
  PageController pagecontroller =
      PageController(viewportFraction: 1, keepPage: true);

  Animations animi = Get.put(Animations());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Animations>(builder: (_) {
      return Stack(
        key: profileKey,
        children: [
          Positioned(
            top: 5,
            right: 50,
            child: Transform.translate(
              offset: Offset(0, animi.up_down.value),
              child: Image.asset(WebRocking.Rock_2, scale: 2),
            ),
          ),
          Transform.translate(
            offset: Offset(0, animi.up_down.value),
            child: Image.asset(WebRocking.Rock_1, scale: 5),
          ),
          Positioned(
            top: 350,
            right: 550,
            child: Transform.translate(
              offset: Offset(0, animi.up_down2.value),
              child: Image.asset(WebRocking.Rock_3, scale: 1.16),
            ),
          ),
          Column(
            children: [
              SizedBox(height: Get.height / 40),
              CarouselSlider(
                items: [
                  ClipPath(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                WebBodyString.hello,
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:
                                      GoogleFonts.readexPro().fontFamily,
                                ),
                              ),
                              SizedBox(height: Get.height / 50),
                              Text(
                                Name.your_name,
                                style: TextStyle(
                                  fontSize: 37,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                WebBodyString.work,
                                style: TextStyle(
                                  color: WebColor.hegihlitecolor,
                                  fontSize: Get.width / 70,
                                ),
                              ),
                              SizedBox(height: Get.height / 20),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: Get.width / 2.5,
                                  child: Text(
                                    style: TextStyle(
                                      fontSize: Get.width / 80,
                                    ),
                                    'A skilled flutter developer with 3 years of experience, you can contact me at any time to start a work full of creativity and good performance',
                                  ),
                                ),
                              ),
                              SizedBox(height: Get.height / 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.facebook),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: WebColor.BrownColor,
                            radius: 220,
                            child: CircleAvatar(
                              radius: 215,
                              backgroundColor: WebColor.BrownColor,
                              // backgroundImage: AssetImage(Photos.myphotos),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: Get.height / 1,
                ),
              ),
              SizedBox(height: Get.height / 20),
            ],
          ),
        ],
      );
    });
  }
}
