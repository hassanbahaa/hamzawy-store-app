import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/forget_password/reset_password_controller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_button.dart';
import '../../../widget/auth/custom_textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "reset password".tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:  Dimentions.height40),
        padding: EdgeInsets.all( Dimentions.height10),
        child: Form(
          key: controller.resetFormState,
          child: ListView(
            children: [
              // header
              Text(
                "reset password header".tr,
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height:  Dimentions.height10,),
              // body
              Text(
                "reset password body".tr,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:  Dimentions.fontSize12),
                textAlign: TextAlign.center,
              ),
              SizedBox(height:  Dimentions.height20,),

              Container(
                child: TextFieldAuthCustom(
                  type: TextInputType.visiblePassword,
                  label: "Password".tr,
                  hint: "Type new password".tr,
                  icon: Icon(controller.hidePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,size:  Dimentions.height20),
                  myController: controller.newPassword,
                  valed: (val){
                    return validInput(val!, 5, 80, "password");
                  },
                ),


              ),
              SizedBox(height:  Dimentions.height20,),

              Container(
                child: TextFieldAuthCustom(
                  type: TextInputType.visiblePassword,
                  label: "Confirm password".tr,
                  hint: "Confirm password hint".tr,
                  icon: Icon(controller.hideRePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,size:  Dimentions.height20),
                  myController: controller.rePassword,
                  valed: (val){
                    return validInput(val!, 5, 80, "re-password",pass: controller.newPassword.text);
                  },
                ),


              ),
              SizedBox(height:  Dimentions.height20,),
              // sign up button
              Container(
                child: AuthCustomButton(
                  text: "Save".tr,
                  onPressed: (){
                    controller.resetPassword();
                    },
                ),
              ),
              SizedBox(height:  Dimentions.height20,),



            ],
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
