import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/image_asset.dart';
import 'package:hamzawy_store/data/model/onboarding_model.dart';


 // onboarding model list
List<OnBoardingModel> onBoardingList = [
  // screen one
  OnBoardingModel(
      title: "onboarding1title".tr,
      image: AppImageAsset.onBoardingImageOne,
      body: "onboarding1body".tr),
  // screen two
  OnBoardingModel(
      title: "onboarding2title".tr,
      image: AppImageAsset.onBoardingImageTwo,
      body: "onboarding2body".tr),
  // screen three
  OnBoardingModel(
      title: "onboarding3title".tr,
      image: AppImageAsset.onBoardingImageThree,
      body: "onboarding3body".tr),
  // screen four
  OnBoardingModel(
      title: "onboarding4title".tr,
      image: AppImageAsset.onBoardingImageFour,
      body: "onboarding4body".tr),
];
