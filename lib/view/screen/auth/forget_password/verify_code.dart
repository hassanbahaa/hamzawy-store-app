import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/signup/signup_controller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';
import '../../../../controller/auth/forget_password/forget_verify_code_controller.dart';
import '../../../widget/auth/custom_button.dart';

class ForgetVerifyCode extends StatelessWidget {
  const ForgetVerifyCode({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "verify code".tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:  Dimentions.height40),
        padding: EdgeInsets.all( Dimentions.height10),
        child: ListView(
          children: [
            // header
            Text(
              "check code".tr,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height:  Dimentions.height10,),
            // body
            Text(
              "verify code body".tr,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:  Dimentions.fontSize12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height:  Dimentions.height20,),

            Container(
              height:  Dimentions.height80,
              // color: Colors.red,

              child: OtpTextField(
                numberOfFields: 5,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                fieldWidth:  Dimentions.height50,
                crossAxisAlignment: CrossAxisAlignment.center,
                borderRadius: BorderRadius.circular(15),
                borderColor: AppColor.primaryColor,
                focusedBorderColor: AppColor.primaryColor,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                    controller.goToResetPassword();

                }, // end onSubmit
              ),


            ),
            SizedBox(height:  Dimentions.height20,),

            // sign up button
            Container(
              child: AuthCustomButton(
                text: "check".tr,
                onPressed: (){print('check');},
              ),
            ),
            SizedBox(height:  Dimentions.height20,),



          ],
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
