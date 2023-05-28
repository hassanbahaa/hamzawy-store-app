import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/data/data_source/remote/forgetpassword/resetpassword.dart';

import '../../../core/class/statusrequest.dart';
import '../../../core/functions/handling_data.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessReset();
  showPassword();
  showRePassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController newPassword;
  late TextEditingController rePassword;
  StatusRequest statusRequest = StatusRequest.init;
  GlobalKey<FormState> resetFormState = GlobalKey<FormState>();
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  String? email;
  bool hidePassword = true;
  bool hideRePassword = true;

  @override
  resetPassword() async{
    var formData = resetFormState.currentState;

    if(newPassword.text == rePassword.text){
      if (formData!.validate()){

        statusRequest = StatusRequest.loading;
        update();
        var response = await resetPasswordData.postData(email!, newPassword.text);

        statusRequest = handlingData(response);

        if (response['status'] == 'success') {
          Get.offNamed(AppRoute.successReset);
        } else if (response['status'] == 'failure') {
          print("password not updated");
        }
        update();


      }else{
        print("Not Valid inputs");
        Get.defaultDialog(title: "!",middleText: "password not match");
      }
    }else {
      print("passwords not match");


    }


  }


  @override
  goToSuccessReset() {
    Get.offNamed(AppRoute.successReset);

  }



  @override
  void onInit() {
    email = Get.arguments['email'];
    newPassword = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }


  @override
  void dispose() {
    newPassword.dispose();
    rePassword.dispose();
    resetFormState.currentState!.dispose();
    super.dispose();
  }


  @override
  showPassword() {
    hidePassword = !hidePassword;
    update();
  }

  @override
  showRePassword() {
    hideRePassword = !hideRePassword;
    update();
  }




}