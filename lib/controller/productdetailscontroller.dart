import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/data/model/items_model.dart';

abstract class ProductDetailsController extends GetxController{



}

 class ProductDetailsControllerImp extends ProductDetailsController{

 late ItemsModel itemsModel;

 initialData(){
  itemsModel = Get.arguments['itemsmodel'];
 }


 @override
  void onInit() {
    // TODO: implement onInit

  initialData();
    super.onInit();
  }

 }