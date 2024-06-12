// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names

import 'package:cv/controller/Animation.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:cv/view/utils/Web_images.dart';
import 'package:cv/view/utils/widget/ServiceCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/Web_Constance.dart';

class WhatICanDoSection extends StatefulWidget {
  @override
  State<WhatICanDoSection> createState() => _WhatICanDoSectionState();
}

class _WhatICanDoSectionState extends State<WhatICanDoSection>
    with SingleTickerProviderStateMixin {
  Animations animi = Get.put(Animations());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Animations>(builder: (_) {
      return Stack(
        key: servicesKey,
        children: [
          Positioned(
            right: 0,
            left: 1150,
            top: 0,
            child: Opacity(
              opacity: animi.Opacitying2.value,
              child: Image.asset(
                WebRocking.Rock_2,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 40,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 5,
                        color: WebColor.liteblue,
                      ),
                    ),
                    SizedBox(width: Get.width / 40),
                    Text(
                      'What I Can do ??',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
              ),
              SizedBox(height: Get.height / 20),
              Center(
                child: SizedBox(
                  width: Get.width / 1.5,
                  height: Get.height / 1,
                  child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 50,
                      mainAxisSpacing: 50,
                      mainAxisExtent: 250,
                    ),
                    children: [
                      ServiceCard(
                        title: 'High-Performance Engineering',
                        icon: WebIcons.leptop,
                      ),
                      ServiceCard(
                        title: 'Business Strategy (Trainee)',
                        icon: WebIcons.Business,
                      ),
                      ServiceCard(
                        title: 'UI Design Excellence',
                        icon: WebIcons.ui,
                      ),
                      ServiceCard(
                        title: 'Real-Time Solutions',
                        icon: WebIcons.time2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
