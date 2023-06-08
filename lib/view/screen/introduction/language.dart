import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/localization/change_local.dart';
import 'package:hamzawy_store/view/screen/introduction/onboarding.dart';

import '../../../core/constant/dimentions.dart';
import '../../widget/language/custom_button.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                  "Choose language".tr,
                style:  TextStyle(
                  fontSize:  Dimensions.fontSize18,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LanguageCustomButton(language: 'اللغة العربية', onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onBoarding);
              }),
               SizedBox(
                height:  Dimensions.height20,
              ),
              LanguageCustomButton(language: 'English', onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onBoarding);
              })
            ],
          ),
        ),
      ),
    );
  }
}
