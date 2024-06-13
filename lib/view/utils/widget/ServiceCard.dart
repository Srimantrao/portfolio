// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors, file_names, non_constant_identifier_names, must_be_immutable

import 'package:cv/controller/ChangingState.dart';
import 'package:cv/view/utils/Web_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatefulWidget {
  final String title;
  final String icon;

  ServiceCard({required this.title, required this.icon});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              WebColor.textcontainer.withOpacity(0.3),
              WebColor.liteParpal.withOpacity(0.1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.bottomLeft,
          ),
          border: Border.all(
            width: 3,
            color: WebColor.bodercolor,
          ),
          color: _isHovered
              ? Colors.blueAccent
              : WebColor.liteblue.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.transparent,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.icon, scale: 6),
            SizedBox(height: 8),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.readexPro().fontFamily,
                fontSize: Get.width / 90,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
