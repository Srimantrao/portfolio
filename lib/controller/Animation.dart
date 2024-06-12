// ignore_for_file: annotate_overrides, prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class Animations extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController controller1;
  late AnimationController Controller2;
  late Animation<double> up_down;
  late Animation<double> up_down2;
  late Animation Opacitying;
  late Animation Opacitying2;

  void onInit() {
    super.onInit();
    controller1 = AnimationController(
      duration: Duration(
        seconds: 1,
      ),
      vsync: this,
    )..repeat(reverse: true);

    Controller2 = AnimationController(
        duration: Duration(
          seconds: 3,
        ),
        vsync: this)
      ..repeat(reverse: true);

    Opacitying = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(Controller2)
      ..addListener(() {
        update();
      });

    Opacitying2 = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(Controller2)
      ..addListener(() {
        update();
      });

    up_down = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller1)
      ..addListener(() {
        update();
      });

    up_down = Tween<double>(
      begin: 0,
      end: 100,
    ).animate(controller1)
      ..addListener(() {
        update();
      });

    up_down2 = Tween<double>(
      begin: 100,
      end: 0,
    ).animate(controller1)
      ..addListener(() {});
  }

  @override
  void onClose() {
    controller1.dispose();
    Controller2.dispose();
    super.onClose();
  }
}
