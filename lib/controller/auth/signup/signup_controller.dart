import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/data/data_source/remote/auth/signup.dart';

import '../../../core/functions/handling_data.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToLogin();
  showPassword();
  showRepassword();
}

class SignUpControllerImp extends SignUpController{

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController rePassword;
  bool hidePassword = true;
  bool hideRepassword = true;
  GlobalKey<FormState> SignUpFormState = GlobalKey<FormState>();
  SignUpData signUpData = SignUpData(Get.find());


  List data = [];



  StatusRequest statusRequest = StatusRequest.init ;

  @override
  signUp() async {
    var formData = SignUpFormState.currentState;
    if (formData!.validate()){


      statusRequest = StatusRequest.loading;
      update();

      var response = await signUpData.postData(name.text, email.text, password.text, phone.text);
      statusRequest = handlingData(response);
      print("status request is ## $statusRequest ## ");
      print("message is ${response}");
      if(StatusRequest.success == statusRequest){
        if ( response['status'] == "sign up success"){
          // data.add(response['data']);
          print("Valid inputs");
          Get.offNamed(AppRoute.signUpCheckCode,arguments: {
            "email":email.text
          });
          // line below to clear the input fields
          // Get.delete<SignUpControllerImp>();
        }else if( response['status'] == "already used" ) {
          Get.defaultDialog(title: "error",middleText: "alreadyhave".tr);
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
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }


  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
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

  @override
  showPassword() {
  hidePassword = !hidePassword;
  update();
  }

  @override
  showRepassword() {
    hideRepassword = !hideRepassword;
    update();
  }



}