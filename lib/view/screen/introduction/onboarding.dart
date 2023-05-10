import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/data/data_source/static/static.dart';
import 'package:hamzawy_store/view/widget/onboarding/dot_controller.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/dimentions.dart';
import '../../widget/onboarding/custom_button.dart';
import '../../widget/onboarding/custom_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // slider ( header , image and body )
             Expanded(
              flex: 3,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimentions.height40),

                  child: OnBoardingCustomSlider()
              ),
            ),
            // bottom part ( dot controller , buttons )
            Expanded(
              flex: 1,
              child:Column(
                children:const [
                  OnBoardingDotController(),
                  Spacer(flex: 2,),
                  OnBoardingCustomButton()

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
