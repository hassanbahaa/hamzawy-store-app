import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/class/handle_data_view.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/linkapi.dart';
import 'package:hamzawy_store/view/widget/home/customappbar.dart';
import 'package:hamzawy_store/view/widget/home/customcarthome.dart';
import 'package:hamzawy_store/view/widget/home/customproductslidehome.dart';
import 'package:hamzawy_store/view/widget/home/listcategorieshome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) {
          // print("The device dimentions is ${Dimensions.screenHeight} for height and ${Dimensions.screenWidth} for width");
          return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      const CustomAppBar(titleAppBar: "Search"),
                      CustomCartHome(
                        title: "Black Friday Off",
                        subtitle: "Up to 50% Discount",
                      ),
                      ListCategoriesHome(),
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
                     CustomProductSlide()
                      // Products container
                    ],
                  )));
        },
      ),
    );
  }
}
