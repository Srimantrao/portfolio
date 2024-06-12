// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';

class Changingstate extends GetxController{
  var Project_HireExpert = true.obs;
  var Caret_Glow = false.obs;

  void Project_HireExpert_fuction(){
    Project_HireExpert.value = true;
    Caret_Glow.value = false;
  }

  void Project_CartGlow_fuction(){
    Project_HireExpert.value = false;
    Caret_Glow.value = true;
  }
}