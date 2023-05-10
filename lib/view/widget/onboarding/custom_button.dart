import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';

class OnBoardingCustomButton extends GetView<OnBoardingControllerImp> {
  const OnBoardingCustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom:  Dimentions.height40),
      height:  Dimentions.height40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal:  Dimentions.height100,vertical: 2),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: (){
          controller.next();
        },
        child:  Text(
          "Continue",
        ),
      ),
    );
  }
}
