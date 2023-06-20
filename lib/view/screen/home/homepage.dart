import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/class/handle_data_view.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/linkapi.dart';
import 'package:hamzawy_store/view/widget/customappbar.dart';
import 'package:hamzawy_store/view/widget/home/customcarthome.dart';
import 'package:hamzawy_store/view/widget/home/customproductslidehome.dart';
import 'package:hamzawy_store/view/widget/home/listcategorieshome.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return GetBuilder<HomeControllerImp>(
      builder: (controller) {
        // print("The device dimentions is ${Dimensions.screenHeight} for height and ${Dimensions.screenWidth} for width");
        // print("XXXXXXXXXXXXXXX ${controller.homeCart}");
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const CustomAppBar(titleAppBar: "Search"),
                    CustomCartHome(
                      title: controller.homeCart.isEmpty ? "Black Friday Off" :  controller.homeCart[0]["cart_title"],
                      subtitle: controller.homeCart.isEmpty ? "Up to 50% Discount" :  controller.homeCart[0]["cart_subtitle"],
                      image:controller.homeCart.isEmpty ? "" :  "${AppLink.imageshome}/${controller.homeCart[0]["cart_image"]}",
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: Dimensions.fontSize14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor),
                    ),
                    const ListCategoriesHome(),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Products for you",
                      style: TextStyle(
                          fontSize: Dimensions.fontSize14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomProductSlide(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Top Sales",
                      style: TextStyle(
                          fontSize: Dimensions.fontSize14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor),
                    ),
                    const SizedBox(
                      height: 10
                    ),
                    const CustomProductSlide(),
                    // Products container
                  ],
                )));
      },
    );
  }
}
