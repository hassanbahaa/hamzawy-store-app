import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/homescreencontroller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import '../widget/home/custombottomnavbarHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          onPressed: () {},
          child: const Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomNavBarHome(),
        body: controller.listPage.elementAt(controller.currentpage),
      );
    });
  }
}


