import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';
import 'package:hamzawy_store/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "2") {
      print('not first time');
      return const RouteSettings(name: AppRoute.home);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      print('not first time');
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
