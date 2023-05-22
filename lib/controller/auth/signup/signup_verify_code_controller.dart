import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/functions/handling_data.dart';
import 'package:hamzawy_store/data/data_source/remote/auth/vertifycode.dart';

abstract class SignUpVerifyCodeController extends GetxController {
  checkCode();

  goToSuccess(String verifycode);
}

class SignUpVerifyCodeControllerImp extends SignUpVerifyCodeController {
  VerifyCodeSignUp verifyCodeSignUp = VerifyCodeSignUp(Get.find());

  String? email;

  StatusRequest statusRequest = StatusRequest.init;

  bool wrongcode = false;

  @override
  checkCode() {}

  @override
  goToSuccess(verifycode) async {
    wrongcode = false;
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUp.postData(email!, verifycode);

    statusRequest = handlingData(response);

    if (response['status'] == 'success') {
      Get.offNamed(AppRoute.successSignup);
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
