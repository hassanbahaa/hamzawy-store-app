import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{
  late TextEditingController email;
  GlobalKey<FormState> forgetFormState = GlobalKey<FormState>();


  @override
  checkEmail() {
    var formData = forgetFormState.currentState;
    if (formData!.validate()){
      print("Valid inputs");
      goToVerifyCode();
    }else{
      print("Not Valid inputs");
    }
  }

  @override
  goToVerifyCode() {
    Get.toNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    email.dispose();
    forgetFormState.currentState!.dispose();
    super.dispose();

  }



}