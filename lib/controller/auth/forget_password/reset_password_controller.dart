import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessReset();
}

class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController newPassword;
  late TextEditingController rePassword;
  GlobalKey<FormState> resetFormState = GlobalKey<FormState>();


  @override
  resetPassword() {
    var formData = resetFormState.currentState;
    if (formData!.validate()){
      print("Valid inputs");
      goToSuccessReset();
    }else{
      print("Not Valid inputs");
    }

  }


  @override
  goToSuccessReset() {
    Get.offNamed(AppRoute.successReset);

  }



  @override
  void onInit() {
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





}