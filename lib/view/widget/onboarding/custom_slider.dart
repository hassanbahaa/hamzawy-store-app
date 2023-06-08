import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/utils.dart';
import '../../../controller/onboarding_controller.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../data/data_source/static/static.dart';

class OnBoardingCustomSlider extends GetView<OnBoardingControllerImp> {
  const OnBoardingCustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        itemCount: onBoardingList.length,
        onPageChanged: (index){
          controller.onPageChanged(index);
        },
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                // header
                onBoardingList[index].title!.capitalize!,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20,
                    color: AppColor.black
                )
              ),
               SizedBox(
                height:  Dimensions.height50,
              ),
              Image.asset(
                onBoardingList[index].image!,
                height:  Dimensions.height225,
                width:  Dimensions.height200,
                fit: BoxFit.fill,
              ),
               SizedBox(
                height:  Dimensions.height50,
              ),
              // body
              Text(
                onBoardingList[index].body!.capitalize!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 2,
                    color: AppColor.gery,
                    fontWeight: FontWeight.w400),
              ),
            ],
          );
        });
  }
}
