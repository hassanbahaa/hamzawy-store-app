import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/services/services.dart';
import 'package:hamzawy_store/data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}


class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController ;
  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length-1) {
      // navigate to login screen
      print('going to login screen');
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);

    } else{
      pageController.animateToPage(currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      print('current index is $currentPage');
    }

    update();
  }

  @override
  onPageChanged(int index) {
    print('current index is $index');
    currentPage = index;
    update();
  }

  @override
  void onInit(){
    pageController = PageController();
    super.onInit();
  }


}