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
              margin: EdgeInsets.symmetric(horizontal: Dimentions.height40),
              padding: EdgeInsets.all( Dimentions.height10),
              child: Form(
                key: controller.loginFormState,
                child: ListView(
                  children: [
                    LogoAuth(),
                    Text(
                      "Welcome back".tr,
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:  Dimentions.height10,),
                    Text(
                      "Sign in message".tr,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize:  Dimentions.fontSize12),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:  Dimentions.height20,),
                    // email text field
                    Container(
                      child: TextFieldAuthCustom(
                        type: TextInputType.emailAddress,
                        label: "Email".tr,
                        hint: "Email Address".tr,
                        icon: Icon(Icons.email_outlined,size:  Dimentions.height20),
                        myController: controller.email,
                        valed: (val){
                          return validInput(val!, 5, 100, "email");
                        },
                      ),


                    ),
                    SizedBox(height:  Dimentions.height20,),
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
                              icon: Icon(controller.hidePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,size:  Dimentions.height20),
                              myController: controller.password,
                              valed: (val){
                                return validInput(val!, 5, 100, "password");
                              },
                            ),


                          );
                        }
                    ),
                    SizedBox(height:  Dimentions.height10,),
                    // forget password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal:  Dimentions.height5),
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
                    SizedBox(height:  Dimentions.height10,),
                    controller.statusRequest == StatusRequest.loading ?
                    Center(child: LinearProgressIndicator(backgroundColor: AppColor.primaryColor,color: Colors.white),)
                        : SizedBox(height: 5,),
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
                    SizedBox(height:  Dimentions.height20,),
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
