import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/class/handle_data_view.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/linkapi.dart';

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
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: "Search",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.grey[200]),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.notifications_active_outlined,
                                  size: Dimensions.fontSize25,
                                  color: Colors.grey[600],
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // color: AppColor.primaryColor,
                        ),
                        // width: Dimensions.screenWidth-60,
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: Dimensions.height120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColor.secondaryColor,
                              ),
                              child: ListTile(
                                title: Text(
                                  "Black Friday Off",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.fontSize20),
                                ),
                                subtitle: Text(
                                  "Up to 50% Discount",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.fontSize20),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 5,
                              child: Container(
                                height: Dimensions.height120 - 10,
                                width: Dimensions.height120 - 10,
                                decoration: BoxDecoration(
                                    // color: AppColor.secondaryColor,
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.height120 / 2)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        height: Dimensions.height90,
                        // color: Colors.red,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: controller.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  height: Dimensions.height65,
                                  width: Dimensions.height65,
                                  decoration: BoxDecoration(
                                      color: AppColor.secondaryLightColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: SvgPicture.network(
                                    "${AppLink.imagescategories}/${controller.categories[index]['categories_image']}",
                                    width: Dimensions.height65,
                                    height: Dimensions.height65,
                                    placeholderBuilder:
                                        (BuildContext context) => Container(
                                      width: Dimensions.height65,
                                      height: Dimensions.height65,
                                    ),
                                  ),
                                ),
                                Text(
                                  controller.categories[index]
                                      ['categories_name'],
                                  style: TextStyle(
                                      fontSize: Dimensions.fontSize12),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15,),
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
                      Container(
                        height: Dimensions.height200,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Stack(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.asset(
                                      "assets/images/1.png",
                                      height: Dimensions.height100,
                                      width: Dimensions.height150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    height: Dimensions.height100,
                                    width: Dimensions.height150,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Positioned(
                                      left: 10,
                                      child: Text(
                                        "Gaming Laptop",
                                        style: TextStyle(
                                            fontSize: Dimensions.fontSize14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ))
                                ],
                              );
                            }),
                      )
                      // Products container
                    ],
                  )));
        },
      ),
    );
  }
}
