import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/view/screen/homepage.dart';

abstract class HomeScreenController extends GetxController {

  changePage(int currentpage);



}



class HomeScreenControllerImp extends HomeScreenController{

  int currentpage = 0;

  List<Widget> listPage = [
  const HomeBody.HomePage(),
    Center(child: Text("Hello page 2"),),
    Center(child: Text("Hello page 3"),),
    Center(child: Text("Hello page 4"),),
    Center(child: Text("Hello page 5"),),
  ] ;







  @override
  changePage(int i) {

    currentpage = i;
    update();

  }
}