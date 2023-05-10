import 'package:flutter/material.dart';

import 'color.dart';

// English Language Theme
ThemeData englishTheme = ThemeData(
  fontFamily: "Raleway",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20,
        color: AppColor.black
    ),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26,
        color: AppColor.black
    ),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.gery,
        fontWeight: FontWeight.w400),
  ),
  primarySwatch: Colors.blue,
);


// Arabic Language Theme
ThemeData arabicTheme = ThemeData(
  fontFamily: "cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20,
        color: AppColor.black
    ),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26,
        color: AppColor.black
    ),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.gery,
        fontWeight: FontWeight.w400),
  ),
  primarySwatch: Colors.blue,
);