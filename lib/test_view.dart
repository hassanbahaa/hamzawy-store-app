import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';

import 'controller/test_controller.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("title"),),
      body: GetBuilder<TestController>(builder: (controller){
        if (controller.statusRequest == StatusRequest.loading){
          return Text("Loading");
        }else if(controller.statusRequest == StatusRequest.offlineFailure){
          return Text("!! No internet connection available !! ");
        } else if(controller.statusRequest == StatusRequest.serverFailure){
          return Text("!! Server failure !!");
        } else{
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context,index){
              return Text("${controller.data}");
            }
          );
        }
      }),
    );
  }
}
