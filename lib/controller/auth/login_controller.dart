import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/data/data_source/remote/auth/login.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handling_data.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController{

  LoginData loginData = LoginData(Get.find());



  GlobalKey<FormState> loginFormState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool hidePassword = true;

  List data = [];

  StatusRequest statusRequest = StatusRequest.init ;



  @override
  login() async {
    var formData = loginFormState.currentState;
    if (formData!.validate()){


      statusRequest = StatusRequest.loading;
      update();

      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);
      print("status request is ## $statusRequest ## ");
      print("message is ${response}");
      if(StatusRequest.success == statusRequest){
        if ( response['status'] == "Sign in successfully"){
          // data.add(response['data']);
          print("Valid inputs for login");
          Get.offNamed(AppRoute.home);

        }else if( response['status'] == "Sign in failed" ) {
          Get.defaultDialog(title: "error",middleText: "incorrect email".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      // line below to clear the input fields
      // Get.delete<SignUpControllerImp>();
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