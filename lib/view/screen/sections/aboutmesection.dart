// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:cv/controller/Animation.dart';
import 'package:cv/modal/aboutmelist.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:cv/view/utils/Web_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/Web_Constance.dart';
import '../../utils/widget/meofabout.dart';

class AboutMeSection extends StatelessWidget {
  Animations animi = Get.put(Animations());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Animations>(
      builder: (_) {
        return Stack(
          key: aboutKey,
          children: [
            Positioned(
              right: 0,
              left: 1150,
              top: 0,
              child: Opacity(
                opacity: animi.Opacitying.value,
                child: Image.asset(
                  WebRocking.Rock_2,
                ),
              ),
            ),
            Positioned(
              right: 1270,
              left: 0,
              top: 0,
              child: Opacity(
                opacity: animi.Opacitying2.value,
                child: Image.asset(
                  WebRocking.spec2,
                  scale: 7,
                ),
              ),
            ),
            Positioned(
              right: 1170,
              left: 50,
              top: 350,
              child: Opacity(
                opacity: animi.Opacitying.value,
                child: Image.asset(
                  WebRocking.Rock_2,
                ),
              ),
            ),
            Positioned(
              right: 70,
              left: 1070,
              top: 150,
              child: Opacity(
                opacity: animi.Opacitying2.value,
                child: Image.asset(
                  WebRocking.Rock_2,
                  scale: 6,
                ),
              ),
            ),
            Positioned(
              right: 70,
              left: 1070,
              top: 350,
              child: Opacity(
                opacity: animi.Opacitying.value,
                child: Image.asset(
                  WebRocking.Rock_4,
                  scale: 6,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 40,
              ),
              child: Container(
                height: Get.height / 1,
                width: Get.width / 1,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: WebColor.liteblue,
                          ),
                        ),
                        SizedBox(width: Get.width / 40),
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: Get.width / 40),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            color: WebColor.liteblue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height / 10),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width / 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AboutME(
                                aboutname: "' Skills '",
                                itemCount: aboutme.length,
                                indexs: aboutme,
                              ),
                              AboutME(
                                aboutname: "' Experience '",
                                itemCount: experience.length,
                                indexs: experience,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageIDE(
                                aboutname: "' IDE '",
                                itemCount: IDES.length,
                                indexs: IDES,
                              ),
                              AboutME(
                                aboutname: "' Skills '",
                                itemCount: aboutme.length,
                                indexs: aboutme,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
