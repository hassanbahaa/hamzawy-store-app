import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/data/data_source/remote/forgetpassword/checkemail.dart';

import '../../../core/functions/handling_data.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{

  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest = StatusRequest.init ;
  late TextEditingController email;
  GlobalKey<FormState> forgetFormState = GlobalKey<FormState>();


  @override
  checkEmail() async {
    var formData = forgetFormState.currentState;
    if (formData!.validate()){
      print("Valid inputs");


      statusRequest = StatusRequest.loading;
      update();

      var response = await checkEmailData.postData(email.text);
      statusRequest = handlingData(response);
      print("status request is ## $statusRequest ## ");
      print("message is ${response}");
      if(StatusRequest.success == statusRequest){
        if ( response['status'] == "success"){
          // data.add(response['data']);
          print("Valid inputs for reset password , and message is ${response['message']} ");
          Get.offNamed(AppRoute.forgetVerifyCode,arguments: { "email":email.text });

        }else if( response['status'] == "not found" ) {
          Get.defaultDialog(title: "error",middleText: "not have email".tr);
          print("Valid inputs for reset password , and message is ${response['message']} ");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      // // line below to clear the input fields
      // // Get.delete<SignUpControllerImp>();
      //
      //
      // goToVerifyCode();
    }else{
      print("Not Valid inputs");
    }
  }

  @override
  goToVerifyCode() {
    Get.toNamed(AppRoute.forgetVerifyCode);
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