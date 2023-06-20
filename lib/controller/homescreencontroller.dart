import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/screen/home/homepage.dart';

abstract class HomeScreenController extends GetxController {

  changePage(int i);



}



class HomeScreenControllerImp extends HomeScreenController{

  int currentpage = 0;

  List<Widget> listPage = [
  const HomeBody(),
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

  }
}