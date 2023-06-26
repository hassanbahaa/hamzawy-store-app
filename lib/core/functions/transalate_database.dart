import 'package:get/get.dart';
import 'package:hamzawy_store/core/services/services.dart';

translateDatabase(ar,en){
  MyServices myServices = Get.find();
  if( myServices.sharedPreferences.getString("lang") == "ar"){
    return  ar;
  }else{
    return en;
  }
}