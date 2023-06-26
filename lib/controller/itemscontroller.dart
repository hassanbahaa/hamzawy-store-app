import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/data/data_source/remote/items_data.dart';
import 'package:hamzawy_store/data/model/items_model.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/color.dart';
import '../core/functions/handling_data.dart';

abstract class ItemsController extends GetxController {

  initialData();
  changeCat(int val,String categories_id);
  getItems(String catID);
  goToProductDetails(ItemsModel itemsModel);

}


class ItemsControllerImp extends ItemsController{
  ItemsData itemsData = ItemsData(Get.find());
  StatusRequest statusRequest = StatusRequest.init;
  List categories = [];
  String? catID;
  List data = [];

  int? selectedCat ;


  @override
  void onInit() {

    initialData();
    super.onInit();
  }

  @override
  initialData() {
  categories = Get.arguments['categories'];
  selectedCat = Get.arguments['selectedCat'];
  catID = Get.arguments['catID'];
  getItems(catID!);
  // print("the selecteeeeeed izzz $selectedCat and name is ${categories[selectedCat!]['categories_name']}");
  }



  changeCat(val, categorid){
    selectedCat = val;
    catID = categorid;
    data=[];
    getItems(categorid);
    update();
  }

  @override
  getItems(catID) async {
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(catID);
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if ( response['status'] == "success"){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();

  }

  @override
  goToProductDetails(itemsmodel) {
    Get.toNamed("productdetails",arguments: {
      "itemsmodel": itemsmodel
    });
  }










}