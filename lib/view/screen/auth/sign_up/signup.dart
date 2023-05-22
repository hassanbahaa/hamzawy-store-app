import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/signup/signup_controller.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/core/functions/valid_input.dart';
import 'package:hamzawy_store/view/widget/auth/logo_auth.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constant/image_asset.dart';
import '../../../../core/functions/exit_alert.dart';
import '../../../widget/auth/custom_button.dart';
import '../../../widget/auth/custom_textfield.dart';
import '../../../widget/auth/haveaccountq.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Sign Up".tr,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: Colors.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: exitAlert,
        child: GetBuilder<SignUpControllerImp>(builder: (controller) =>
          controller.statusRequest == StatusRequest.loading ?  Center(
            child: Lottie.asset(AppImageAsset.loading),
          ) :
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimentions.height40),
            padding: EdgeInsets.all(Dimentions.height10),
            child: Form(
              key: controller.SignUpFormState,
              child: ListView(
                children: [
// header
                  Text(
                    "Create account".tr,
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
// body
                  Text(
                    "Sign up message".tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: Dimentions.fontSize12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
// Full Name field
                  Container(
                    child: TextFieldAuthCustom(
                      type: TextInputType.name,
// myController: ,
                      label: "Full Name".tr,
                      hint: "Type Full Name".tr,
                      icon: Icon(Icons.person_outline,
                          size: Dimentions.height20),
                      myController: controller.name,
                      valed: (val) {
                        return validInput(val!, 5, 30, "name");
                      },
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),

                  Container(
                    child: TextFieldAuthCustom(
                      type: TextInputType.emailAddress,
                      label: "Email".tr,
                      hint: "Email Address".tr,
                      icon: Icon(Icons.email_outlined,
                          size: Dimentions.height20),
                      myController: controller.email,
                      valed: (val) {
                        return validInput(val!, 5, 100, "email");
                      },
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
                  Container(
                    child: TextFieldAuthCustom(
                      type: TextInputType.emailAddress,
                      label: "Phone".tr,
                      hint: "Phone".tr,
                      icon: Icon(Icons.phone_android,
                          size: Dimentions.height20),
                      myController: controller.phone,
                      valed: (val) {
                        return validInput(val!, 5, 13, "phone");
                      },
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
// password text field
                  GetBuilder<SignUpControllerImp>(
                    builder: (controller) {
                      return Container(
                        child: TextFieldAuthCustom(
                          type: TextInputType.visiblePassword,
                          password: controller.hidePassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
// myController: ,
                          label: "Password".tr,
                          hint: "Type password signup".tr,
                          icon: Icon(
                              controller.hidePassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: Dimentions.height20),
                          myController: controller.password,
                          valed: (val) {
                            return validInput(val!, 5, 50, "password");
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
// password confirm field
                  GetBuilder<SignUpControllerImp>(builder: (controller) {
                    return Container(
                      child: TextFieldAuthCustom(
                        type: TextInputType.visiblePassword,
                        password: controller.hideRepassword,
                        onTapIcon: () {
                          controller.showRepassword();
                        },
// myController: ,
                        label: "Confirm password".tr,
                        hint: "Confirm password hint".tr,
                        icon: Icon(
                            controller.hideRepassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: Dimentions.height20),
                        myController: controller.rePassword,
                        valed: (val) {
                          return validInput(val!, 5, 50, "re-password",
                              pass: controller.password.text);
                        },
                      ),
                    );
                  }),
                  SizedBox(
                    height: Dimentions.height20,
                  ),
// sign up button
                  Container(
                    child: AuthCustomButton(
                      text: "Sign Up".tr,
                      onPressed: () {
                        controller.signUp();
                        print('Sign Up');
                      },
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height20,
                  ),

// Don't have an account ? sign up
                  HaveAccountQ(
                    text: "have account",
                    action: "Sign in",
                    onTap: () {
                      controller.goToLogin();
                    },
                  ),
                ],
              ),
            ),
          )

        ),
      ),
      backgroundColor: AppColor.backgroundColor,
    );
  }
}
