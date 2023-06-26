import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/functions/transalate_database.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../linkapi.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  // final int itemsCount;
  // final String image;
  // final String categoryName;
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      height: Dimensions.height90,
      // color: Colors.red,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return InkWell(
            onTap: (){
              print("selected category ID isss : ${controller.categories[index]['categories_id']} ");
              controller.goToItems(controller.categories, index,controller.categories[index]['categories_id']);
            },
            child: Column(
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
                  translateDatabase(controller.categories[index]['categories_name_ar'], controller.categories[index]['categories_name']),
                  style: TextStyle(
                      fontSize: Dimensions.fontSize12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
