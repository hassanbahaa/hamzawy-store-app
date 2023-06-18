import 'package:get/get.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/services/services.dart';
import 'package:hamzawy_store/data/data_source/remote/home_data.dart';

import '../core/functions/handling_data.dart';

abstract class HomeController extends GetxController {
  initialData();

  getData();

  HomeData homeData = HomeData(Get.find());

  List data = [];
  List categories = [];
  List items = [];
  List homeCart = [];

  StatusRequest statusRequest = StatusRequest.init;

}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;
  String? email;
  String? phone;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
    email = myServices.sharedPreferences.getString("email");
    phone = myServices.sharedPreferences.getString("phone");
  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    print("the get data stage");
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
        homeCart.addAll(response['homecart']);
        print("categories items is ${categories.length}");
        print(categories);
        print("the status is success");
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
