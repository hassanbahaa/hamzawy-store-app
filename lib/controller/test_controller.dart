import 'package:get/get.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/data/data_source/remote/test_data.dart';

import '../core/functions/handling_data.dart';

class TestController extends GetxController{
  TestData testData = TestData(Get.find());


  List data = [];

  late StatusRequest statusRequest;

  getData() async{

    statusRequest = StatusRequest.loading;

    var response = await testData.getData();
    statusRequest = handlingData(response);
  }
}