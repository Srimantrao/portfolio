// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable

import 'package:cv/controller/ChangingState.dart';
import 'package:cv/view/utils/Web_Constance.dart';
import 'package:cv/view/utils/Web_Icons.dart';
import 'package:cv/view/utils/Web_String.dart';
import 'package:cv/view/utils/Web_images.dart';
import 'package:cv/view/utils/widget/Add_Container.dart';
import 'package:cv/view/utils/widget/SkillConatiner.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../utils/Web_color.dart';

class MyProjectsSection extends StatelessWidget {
  Changingstate stat = Get.put(Changingstate());

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: recommendationsKey,
      padding: EdgeInsets.all(16.0),
      child: Column(
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
                  'My Project',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: Get.width / 70),
                      ),
                      onTap: () {
                        stat.Project_HireExpert_fuction();
                      },
                    ),
                    SizedBox(height: Get.height / 50),
                    GestureDetector(
                      onTap: () {
                        stat.Project_CartGlow_fuction();
                      },
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: Get.width / 70),
                      ),
                    ),
                    SizedBox(height: Get.height / 50),
                  ],
                ),
                SizedBox(width: Get.width / 20),
                Obx(
                  () => Visibility(
                    visible: stat.Project_HireExpert.value,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              WebProjects.HireExpert,
                              style: TextStyle(fontSize: Get.width / 50),
                            ),
                            SizedBox(height: Get.height / 50),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Dart,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Provider,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.API,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Getx,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Version,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 50),
                            Text(
                              Skills_HireExpert.Info_app,
                              style: TextStyle(
                                fontSize: Get.width / 70,
                              ),
                            ),
                            SizedBox(height: Get.height / 50),
                            SizedBox(
                              width: Get.width / 3,
                              child: Text(
                                Skills_HireExpert.describe,
                                style: TextStyle(
                                  fontSize: Get.width / 100,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 20),
                            Row(
                              children: [
                                AddContainer(
                                  icons: WebIconss.apple_icons,
                                  text: Skills_HireExpert.AppStore,
                                ),
                                SizedBox(width: Get.width / 50),
                                AddContainer(
                                  icons: WebIconss.google_icons,
                                  text: Skills_HireExpert.AppGoogle,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: Get.width / 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              WebRocking.Image_back,
                              scale: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: stat.Caret_Glow.value,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              WebProjects.HireExpert,
                              style: TextStyle(fontSize: Get.width / 50),
                            ),
                            SizedBox(height: Get.height / 50),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Dart,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Provider,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.API,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Getx,
                                    ),
                                    Skillconatiner(
                                      Skillname: Skills_HireExpert.Version,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: Get.height / 50),
                            Text(
                              Skills_HireExpert.Info_app,
                              style: TextStyle(
                                fontSize: Get.width / 70,
                              ),
                            ),
                            SizedBox(height: Get.height / 50),
                            SizedBox(
                              width: Get.width / 3,
                              child: Text(
                                Skills_HireExpert.describe,
                                style: TextStyle(
                                  fontSize: Get.width / 100,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.height / 20),
                            Row(
                              children: [
                                AddContainer(
                                  icons: WebIconss.apple_icons,
                                  text: Skills_HireExpert.AppStore,
                                ),
                                SizedBox(width: Get.width / 50),
                                AddContainer(
                                  icons: WebIconss.google_icons,
                                  text: Skills_HireExpert.AppGoogle,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: Get.width / 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              WebRocking.Image_back,
                              scale: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
