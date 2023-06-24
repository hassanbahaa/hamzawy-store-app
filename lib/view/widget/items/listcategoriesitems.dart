import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/itemscontroller.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../linkapi.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
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
            onTap: () {
              controller.changeCat(index,controller.categories[index]['categories_id']);
              // print("$index  and ${controller.selectedCat}");
            },
            child: GetBuilder<ItemsControllerImp>(builder: (controller){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: Dimensions.height65,
                    width: Dimensions.height65,
                    decoration: BoxDecoration(
                        color:controller.selectedCat == index ? AppColor.primaryColor.withOpacity(0.7) : AppColor.secondaryLightColor,
                        // color:AppColor.secondaryLightColor,
                        borderRadius: BorderRadius.circular(10),
                        border: controller.selectedCat == index ? Border.all(color: AppColor.primaryColor, width: 3)
                            : null
                    ),
                    child: SvgPicture.network(
                      "${AppLink.imagescategories}/${controller.categories[index]['categories_image']}",
                      width: Dimensions.height65,
                      height: Dimensions.height65,
                      placeholderBuilder: (BuildContext context) => Container(
                        width: Dimensions.height65,
                        height: Dimensions.height65,
                      ),
                    ),
                  ),
                  Text(
                    controller.categories[index]['categories_name'],
                    style: TextStyle(
                        fontSize: Dimensions.fontSize14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gery),
                  )
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
