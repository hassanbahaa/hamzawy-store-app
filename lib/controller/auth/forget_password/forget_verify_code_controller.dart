import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

import '../../../core/class/statusrequest.dart';
import '../../../core/functions/handling_data.dart';
import '../../../data/data_source/remote/forgetpassword/resetverifycode.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController{
  late String verifyCode;
  String? email;
  bool wrongcode = false;
  StatusRequest statusRequest = StatusRequest.init;
  VerifyCodeResetPassword verifyCodeResetPassword = VerifyCodeResetPassword(Get.find());

  @override
  checkCode() {

  }

  @override
  goToResetPassword(verifycode) async {
    wrongcode = false;
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeResetPassword.postData(email!, verifycode);

    statusRequest = handlingData(response);

    if (response['status'] == 'correct verify code') {
      Get.offNamed(AppRoute.resetPassword,arguments: { "email":email });
    } else if (response['status'] == 'wrong verify code') {
      print("wrong verify code");
      wrongcode = true;
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }






}