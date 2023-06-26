import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/functions/transalate_database.dart';

import '../../../core/constant/dimentions.dart';
import '../../../linkapi.dart';

class CustomProductSlide extends GetView<HomeControllerImp> {
  const CustomProductSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: Dimensions.height180,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Container(
              height: Dimensions.height180,
              width:  Dimensions.width140,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: AppColor.gery3,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                    "${AppLink.imagesitems}/${controller.items[i]['items_image']}",
                    height: Dimensions.height100,
                    width: Dimensions.height150,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    height: Dimensions.height60,
                    padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         translateDatabase(controller.items[i]["items_name_ar"], controller.items[i]["items_name"]),
                         style: TextStyle(
                             fontSize: Dimensions.fontSize12,
                             fontWeight: FontWeight.w600,
                             overflow: TextOverflow.ellipsis
                             ,
                             color: AppColor.primaryDarkColor),
                       ),
                       Container(
                         // height: Dimensions.height35,
                         padding: EdgeInsets.zero,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "${controller.items[i]["items_price"]}",
                               style: TextStyle(
                                   fontSize: Dimensions.fontSize14,
                                   fontWeight: FontWeight.w600,
                                   overflow: TextOverflow.ellipsis
                                   ,
                                   color: AppColor.primaryDarkColor),
                             ),
                             const InkWell(
                               child: Icon(Icons.arrow_forward_rounded,size: 16,),
                             ),
                           ],
                         ),
                       )
                     ],
                    ),
                  ),


                ],
              ),
            );
          }),
    );
  }
}


/*



 */