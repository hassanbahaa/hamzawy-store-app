import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/signup/signup_controller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';
import '../../../../controller/auth/forget_password/forget_verify_code_controller.dart';
import '../../../../core/class/statusrequest.dart';
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
      body: GetBuilder<VerifyCodeControllerImp>(builder: (controller) =>
          Container(
            margin: EdgeInsets.symmetric(horizontal:  Dimensions.height40),
            padding: EdgeInsets.all( Dimensions.height10),
            child: ListView(
              children: [
                // header
                Text(
                  "check code".tr,
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:  Dimensions.height10,),
                // body
                Text(
                  "verify code body".tr,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:  Dimensions.fontSize12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:  Dimensions.height20,),

                Container(
                  height:  Dimensions.height80,
                  // color: Colors.red,

                  child: OtpTextField(
                    numberOfFields: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    fieldWidth:  Dimensions.height50,
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
                      controller.goToResetPassword(verificationCode);

                    }, // end onSubmit
                  ),


                ),
                SizedBox(height:  Dimensions.height20,),
                controller.statusRequest == StatusRequest.loading ?
                Center(child: LinearProgressIndicator(backgroundColor: AppColor.primaryColor,color: Colors.white),)
                    : SizedBox(height: 1,),

                controller.wrongcode ? Center(child: Text("wrong code, please try again",style: TextStyle(color: Colors.red),)): SizedBox(height: 1,),

                // sign up button
                Container(
                  child: AuthCustomButton(
                    text: "check".tr,
                    onPressed: (){print('check');},
                  ),
                ),
                SizedBox(height:  Dimensions.height20,),



              ],
            ),
          )
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
