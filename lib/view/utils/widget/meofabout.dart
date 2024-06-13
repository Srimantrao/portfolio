// ignore_for_file: prefer_const_constructors, prefer_const_declarations, use_super_parameters

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

class ImageIDE extends StatefulWidget {
  final List<String> indexs;
  final String aboutname;
  final int itemCount;

  const ImageIDE({
    Key? key,
    required this.aboutname,
    required this.itemCount,
    required this.indexs,
  }) : super(key: key);

  @override
  State<ImageIDE> createState() => _ImageIDEState();
}

class _ImageIDEState extends State<ImageIDE> {
  final List<bool> _isHoveredList = [];

  @override
  void initState() {
    _isHoveredList.addAll(List<bool>.filled(widget.itemCount, false));
    super.initState();
  }

  void onEnter(int index, bool isHovered) => _isHoveredList[index] = isHovered;

  @override
  Widget build(BuildContext context) {
    final hoverScale = 1.3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.aboutname,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        SizedBox(
          height: Get.height / 5,
          width: Get.width / 3,
          child: ListView.builder(
            itemCount: widget.itemCount,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final hoverTransform = _isHoveredList[index]
                  ? Matrix4.identity().scaled(hoverScale)
                  : Matrix4.identity();
              return MouseRegion(
                onEnter: (event) => onEnter(index, true),
                onExit: (event) => onEnter(index, false),
                child: AnimatedContainer(
                  transform: hoverTransform,
                  duration: Duration(milliseconds: 180),
                  child: Image.asset(
                    widget.indexs[index],
                    height: 80,
                    width: 80,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _isHoveredList.addAll(List<bool>.filled(widget.itemCount, false));
    super.dispose();
  }
}
