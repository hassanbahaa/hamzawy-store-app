import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/onboarding_controller.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../data/data_source/static/static.dart';

class OnBoardingDotController extends StatelessWidget {
  const OnBoardingDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
                  (index) => AnimatedContainer(
                margin: EdgeInsets.only(right:  Dimensions.height5),
                duration: Duration(milliseconds: 300),
                width: controller.currentPage == index ?  Dimensions.height20 :  Dimensions.height5,
                height:  Dimensions.height5,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(5)
                ),
              ))
        ],
      );
    });
  }
}
