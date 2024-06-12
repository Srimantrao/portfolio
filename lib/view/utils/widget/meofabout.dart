// ignore_for_file: prefer_const_constructors

import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../modal/aboutmelist.dart';

class AboutME extends StatelessWidget {
  final List<String> indexs;
  final String aboutname;
  final int itemCount;

  const AboutME({
    super.key,
    required this.aboutname,
    required this.itemCount,
    required this.indexs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aboutname,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: Get.height / 50),
        SizedBox(
          height: Get.height / 3,
          width: Get.width / 3,
          child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '*  ',
                      style: TextStyle(
                        fontSize: 18,
                        color: WebColor.textcolor,
                      ),
                    ),
                    TextSpan(
                      text: indexs[index],
                      style: TextStyle(
                        fontFamily: GoogleFonts.readexPro().fontFamily,
                        color: WebColor.textcolor,
                        fontSize: Get.width / 100,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ImageIDE extends StatelessWidget {
  final List<String> indexs;
  final String aboutname;
  final int itemCount;

  const ImageIDE({
    super.key,
    required this.aboutname,
    required this.itemCount,
    required this.indexs,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aboutname,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: Get.height / 50),
        SizedBox(
          height: Get.height / 5,
          width: Get.width / 3,
          child: ListView.builder(
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Image.asset(
                indexs[index],
                height: 80,
                width: 80,
              );
            },
          ),
        ),
      ],
    );
  }
}
