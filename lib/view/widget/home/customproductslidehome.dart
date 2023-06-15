import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/home_controller.dart';

import '../../../core/constant/dimentions.dart';
import '../../../linkapi.dart';

class CustomProductSlide extends GetView<HomeControllerImp> {
  const CustomProductSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: Dimensions.height200,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Stack(
              children: [
                Container(
                  height: Dimensions.height100,
                  width: Dimensions.height150,
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.network(
                    "${AppLink.imagesitems}/${controller.items[i]['items_image']}",
                    height: Dimensions.height100,
                    width: Dimensions.height150,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: Dimensions.height100,
                  width: Dimensions.height150,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius:
                      BorderRadius.circular(20)),
                ),
                Positioned(
                  width: Dimensions.height140,
                    left: 10,
                    child: Text(
                      "${controller.items[i]["items_name"]}",
                      style: TextStyle(
                          fontSize: Dimensions.fontSize14,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis
                          ,
                          color: Colors.white),
                    ))
              ],
            );
          }),
    );
  }
}
