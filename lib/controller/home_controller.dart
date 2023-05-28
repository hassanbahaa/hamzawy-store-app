import 'package:get/get.dart';
import 'package:hamzawy_store/core/services/services.dart';

class HomeController extends GetxController{

}


class HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();


  String? username;
  String? id;
  String? email;
  String? phone;



  initialData(){

    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
    email = myServices.sharedPreferences.getString("email");
    phone = myServices.sharedPreferences.getString("phone");


  }


  @override
  void onInit(){
    initialData();
    super.onInit();
  }

}