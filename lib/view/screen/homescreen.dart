import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/controller/homescreencontroller.dart';
import 'package:hamzawy_store/core/constant/color.dart';

import '../widget/home/custombottomnavitem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            children: [
              Row(

                children: [
                  CustomNavBarItem(
                    icon: Icons.home,
                    text: "Home",
                    onPressed: () {
                      controller.changePage(0);
                    },
                    active: controller.currentpage == 0 ? true : false,
                  ),
                  CustomNavBarItem(
                    icon: Icons.favorite,
                    text: "Favorite",
                    onPressed: () {
                      controller.changePage(1);
                    },
                    active: controller.currentpage == 1 ? true : false,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  CustomNavBarItem(
                    icon: Icons.person,
                    text: "Profile",
                    onPressed: () {
                      controller.changePage(3);
                    },
                    active: controller.currentpage == 3 ? true : false,
                  ),
                  CustomNavBarItem(
                    icon: Icons.settings,
                    text: "Setting",
                    onPressed: () {
                      controller.changePage(4);
                    },
                    active: controller.currentpage == 4 ? true : false,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: controller.listPage.elementAt(controller.currentpage),
      );
    });
  }
}
