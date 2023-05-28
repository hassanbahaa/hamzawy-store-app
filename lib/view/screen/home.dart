import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/controller/home_controller.dart';
import 'package:hamzawy_store/core/services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp()) ;




    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:  Center(
          child: Column(
            children: [
              Text("Hello to Hamzawy Store ",style: TextStyle(fontSize: 20),),
              SizedBox(height: 30,),
              Text("Welcome mr ${controller.username} ",style: TextStyle(fontSize: 25),),


            ],
          ),
        ),
      ),
    );
  }
}
