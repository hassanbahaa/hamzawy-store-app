import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController{

  GlobalKey<FormState> loginFormState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool hidePassword = true;

  @override
  login() {
  var formData = loginFormState.currentState;
  if (formData!.validate()){
    print("Valid inputs");
  }else{
    print("Not Valid inputs");
  }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    loginFormState.currentState!.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(AppRoute.forgetPassword);
    // line below to clear the input fields

  }



  @override
  showPassword() {
  hidePassword = !hidePassword;
  update();
  }



}