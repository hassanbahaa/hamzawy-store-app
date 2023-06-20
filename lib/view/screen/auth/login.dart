import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/functions/valid_input.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/exit_alert.dart';
import '../../widget/auth/custom_button.dart';
import '../../widget/auth/custom_textfield.dart';
import '../../widget/auth/haveaccountq.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Sign in".tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.grey),
        ),
      ),
      body: GetBuilder<LoginControllerImp>(builder: (controller) =>



          WillPopScope(
            onWillPop: exitAlert,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.height10),
              padding: EdgeInsets.all( Dimensions.height5),
              child: Form(
                key: controller.loginFormState,
                child: ListView(
                  children: [
                    LogoAuth(),
                    Text(
                      "Welcome back".tr,
                      style: Theme.of(context).textTheme.displayMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:  Dimensions.height5,),
                    Text(
                      "Sign in message".tr,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize:  Dimensions.fontSize12),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:  Dimensions.height10,),
                    // email text field
                    Container(
                      child: TextFieldAuthCustom(
                        type: TextInputType.emailAddress,
                        label: "Email".tr,
                        hint: "Email Address".tr,
                        icon: Icon(Icons.email_outlined,size: Dimensions.fontSize18),
                        myController: controller.email,
                        valed: (val){
                          return validInput(val!, 5, 100, "email");
                        },
                      ),


                    ),
                    SizedBox(height:  Dimensions.height10,),
                    // password text field
                    GetBuilder<LoginControllerImp>(
                        builder:(controller){
                          return Container(
                            child: TextFieldAuthCustom(
                              type: TextInputType.visiblePassword,
                              password: controller.hidePassword,
                              onTapIcon: (){
                                controller.showPassword();
                              },
                              // myController: ,
                              label: "Password".tr,
                              hint: "Type password".tr,
                              icon: Icon(controller.hidePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,size:  Dimensions.fontSize18),
                              myController: controller.password,
                              valed: (val){
                                return validInput(val!, 5, 100, "password");
                              },
                            ),


                          );
                        }
                    ),
                    SizedBox(height:  Dimensions.height5,),
                    // forget password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:  Dimensions.height5),
                          child: InkWell(
                            onTap: (){
                              controller.goToForgetPassword();
                            },
                            child: Text(
                              "Forget Password".tr,
                              textAlign: TextAlign.end,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:  Dimensions.height5,),
                    controller.statusRequest == StatusRequest.loading ?
                    const Center(child: LinearProgressIndicator(backgroundColor: AppColor.primaryColor,color: Colors.white),)
                        : const SizedBox(height: 5,),
                    // sign in button
                    Container(
                      child: AuthCustomButton(
                        text: "Sign In".tr,
                        onPressed: (){
                          print('Sign in');
                          controller.login();
                        },
                      ),
                    ),
                    SizedBox(height:  Dimensions.height10,),
                    // Don't have an account ? sign up
                    HaveAccountQ(
                      text: "don't have an account",
                      action: "Sign Up",
                      onTap: (){
                        controller.goToSignUp();
                      },
                    ),


                  ],
                ),
              ),
            ),

          )
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
