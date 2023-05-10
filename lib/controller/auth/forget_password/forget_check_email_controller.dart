import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class CheckEmailController extends GetxController{
  checkEmail();
  goToCheckCode();
}

class CheckEmailControllerImp extends CheckEmailController{
  late TextEditingController email;


  @override
  checkEmail() {

  }

  @override
  goToCheckCode() {
    Get.toNamed(AppRoute.signUpCheckCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }



}