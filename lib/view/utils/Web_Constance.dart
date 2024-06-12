// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';

final GlobalKey profileKey = GlobalKey();
final GlobalKey aboutKey = GlobalKey();
final GlobalKey servicesKey = GlobalKey();
final GlobalKey projectsKey = GlobalKey();
final GlobalKey recommendationsKey = GlobalKey();

void scrollToSection(GlobalKey key) {
  final context = key.currentContext!;
  Scrollable.ensureVisible(
    context,
    duration: Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}
