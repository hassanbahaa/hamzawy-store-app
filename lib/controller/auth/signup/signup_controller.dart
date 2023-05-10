import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController{

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> SignUpFormState = GlobalKey<FormState>();

  @override
  signUp() {
    var formData = SignUpFormState.currentState;
    if (formData!.validate()){
      print("Valid inputs");
      Get.offNamed(AppRoute.signUpCheckCode);
      // line below to clear the input fields
      Get.delete<SignUpControllerImp>();
    }else{
      print("Not Valid inputs");
    }
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }


  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    email.dispose();
    password.dispose();
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }



}