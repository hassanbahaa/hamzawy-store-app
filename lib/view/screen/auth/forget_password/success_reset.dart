import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/auth/forget_password/reset_password_controller.dart';

import '../../../../controller/auth/forget_password/reset_success.controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/dimentions.dart';
import '../../../../core/constant/routes_names.dart';
import '../../../widget/auth/custom_button.dart';

class SuccessReset extends StatelessWidget {
  const SuccessReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordSuccessImp controller = Get.put(ResetPasswordSuccessImp());
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
        padding: EdgeInsets.all(Dimentions.height20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: Dimentions.height200,
              color: Colors.green,
            ),
            SizedBox(height: Dimentions.height20,),
            Text("reset Password success".tr),
            SizedBox(height: Dimentions.height40,),
            Container(
              width: Dimentions.height200,
              child: AuthCustomButton(
                text: "Go to login".tr.capitalize!,
                onPressed: (){
                  print('Sign in');
                  controller.goToLogin();

                },
              ),
            ),
            SizedBox(height: Dimentions.height40,),

          ],
        ),
      ),

    );
  }
}
