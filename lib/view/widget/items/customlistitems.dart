import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/controller/itemscontroller.dart';
import 'package:hamzawy_store/core/functions/transalate_database.dart';
import 'package:hamzawy_store/data/data_source/remote/items_data.dart';
import 'package:hamzawy_store/data/model/items_model.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../linkapi.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({Key? key, required this.itemsModel, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
      controller.goToProductDetails(itemsModel);
      },
      child: Card(
        elevation: 0.0,
        color: AppColor.gery3,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Dimensions.height100,
                width: Dimensions.width150,
                child: Hero(
                  tag: "${itemsModel.itemsId}",
                  child: CachedNetworkImage(
                      imageUrl:
                      "${AppLink.imagesitems}/${itemsModel.itemsImage}",
                    // height: Dimensions.height100,
                    // width: Dimensions.width150,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsName),
                maxLines: 2,
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: Dimensions.fontSize12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                translateDatabase(itemsModel.itemsDescriptionAr, itemsModel.itemsDescription),
                maxLines: 2,
                style: TextStyle(
                    color: AppColor.gery,
                    fontSize: Dimensions.fontSize10,
                ),
              ),
              Container(
                height: Dimensions.height25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${itemsModel.itemsPrice} \$",
                        style: TextStyle(
                            color: AppColor.black,
                            fontSize: Dimensions.fontSize16,
                            fontWeight: FontWeight.w500)
                    ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: Dimensions.fontSize16,)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
