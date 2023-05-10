import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class SignUpVerifyCodeController extends GetxController{
  checkCode();
  goToSuccess();
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController{
  late String verifyCode;


  @override
  checkCode() {

  }

  @override
  goToSuccess() {
    Get.toNamed(AppRoute.successSignup);
  }

  @override
  void onInit() {
    // verifyCode = "";
    super.onInit();
  }






}