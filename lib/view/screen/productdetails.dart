import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/productdetailscontroller.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/core/functions/transalate_database.dart';
import 'package:hamzawy_store/data/model/items_model.dart';
import 'package:hamzawy_store/linkapi.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);
  ProductDetailsControllerImp controller =
      Get.put(ProductDetailsControllerImp());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: Dimensions.height180,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
              ),
              Positioned(
                top: 30,
                right: Dimensions.screenHeight /8,
                left: Dimensions.screenHeight /8,
                child: Hero(
                  tag: "${controller.itemsModel.itemsId}",
                  child: CachedNetworkImage(
                  imageUrl:
                    "${AppLink.imagesitems}/${controller.itemsModel.itemsImage!}",
                  height: Dimensions.height225,
                ),
                ),
              )
            ],
          ),
          SizedBox(height: 50,),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 10,),
                Text(
                    translateDatabase(controller.itemsModel.itemsDescriptionAr, controller.itemsModel.itemsDescription),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
