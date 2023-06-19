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
  ] ;

  List listnames = [
    "Home",
    "Favourite",
    "Profile",
    "Settings",
  ] ;
  List<IconData> listIcons = [
    Icons.home,
    Icons.favorite,
    Icons.person,
    Icons.settings,
  ] ;




  @override
  changePage(int i) {

    currentpage = i;
    update();
    print("current int is $currentpage");

  }
}