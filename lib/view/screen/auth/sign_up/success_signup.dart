import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/signup/signup_success_controller.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custom_button.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpSuccessImp controller = Get.put(SignUpSuccessImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Congratulations!".tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.green),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: Dimensions.height20,horizontal: Dimensions.height40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: Dimensions.height200,
              color: Colors.green,
            ),
            SizedBox(height: Dimensions.height20,),
            Text(
                "signup success message".tr,
                textAlign: TextAlign.center,
            ),
            SizedBox(height: Dimensions.height40,),
            Container(
              width: Dimensions.height200,
              child: AuthCustomButton(
                text: "Go to login".tr.capitalize!,
                onPressed: (){
                  print('Sign in');
                  controller.goToLogin();

                  },
              ),
            ),
            SizedBox(height: Dimensions.height40,),

          ],
        ),
      ),

    );
  }
}
