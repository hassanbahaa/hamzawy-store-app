import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/core/constant/color.dart';

Future<bool> exitAlert() {
   Get.defaultDialog(
      title: "exit".tr,
      middleText: "exitbody".tr,
      contentPadding: EdgeInsets.all(20),
      actions: [
        ElevatedButton(
            onPressed: (){
              exit(0);
            },
            child: Text("exit".tr),
            style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.red)
          ),
        ),
        SizedBox(width: 20,),
        ElevatedButton(
            onPressed: (){
              Get.back();
            },
            child: Text("cancel".tr),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => AppColor.primaryColor)
          ),
        ),

      ]);
   return Future.value(true);
}
