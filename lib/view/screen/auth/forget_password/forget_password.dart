import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/signup/signup_controller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';

import '../../../../controller/auth/forget_password/forget_password_controller.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_button.dart';
import '../../../widget/auth/custom_textfield.dart';
import '../../../widget/auth/haveaccountq.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Forget Password s".tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
        ),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) =>
          Container(
            margin: EdgeInsets.symmetric(horizontal:  Dimensions.height40),
            padding: EdgeInsets.all( Dimensions.height10),
            child: Form(
              key: controller.forgetFormState,
              child: ListView(
                children: [
                  // header
                  Text(
                    "check email".tr,
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:  Dimensions.height10,),
                  // body
                  Text(
                    "Forget Password message".tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:  Dimensions.fontSize12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:  Dimensions.height20,),

                  Container(
                    child: TextFieldAuthCustom(
                      type: TextInputType.emailAddress,
                      label: "Email".tr,
                      hint: "Email Address".tr,
                      icon: Icon(Icons.email_outlined,size:  Dimensions.height20),
                      myController: controller.email,
                      valed: (val){
                        return validInput(val!, 5, 80, "email");
                      },
                    ),


                  ),
                  SizedBox(height:  Dimensions.height20,),
                  controller.statusRequest == StatusRequest.loading ?
                  const Center(child: LinearProgressIndicator(backgroundColor: AppColor.primaryColor,color: Colors.white),)
                      : const SizedBox(height: 1,),
                  // sign up button
                  Container(
                    child: AuthCustomButton(
                      text: "check".tr,
                      onPressed: (){
                        controller.checkEmail();
                        print('check');
                      },
                    ),
                  ),
                  SizedBox(height:  Dimensions.height20,),



                ],
              ),
            ),
          )
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
