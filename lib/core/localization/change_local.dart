import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/app_theme.dart';
import 'package:hamzawy_store/core/services/services.dart';

class LocaleController extends GetxController{
  
  Locale? language;
  String? newlang;

  ThemeData appTheme = englishTheme;
  
  MyServices myServices = Get.find();
  
  changeLang(String langCode){
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    newlang = langCode;
    appTheme = langCode == "ar" ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);

  }

  @override
  void onInit() {
    String? sharedLang = myServices.sharedPreferences.getString('lang');
    // TODO: implement onInit
    if(sharedLang == "ar"){
      language = const Locale('ar');
      appTheme = arabicTheme;
      print('lang is $language if shared ar');
    }else if (sharedLang == "en") {
      language = const Locale('en');
      appTheme = englishTheme;
      print('lang is $language if shared en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = englishTheme;
      print('lang is $language from on init');
    }
    super.onInit();
  }


}