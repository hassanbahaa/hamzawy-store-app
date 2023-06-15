import 'package:flutter/material.dart';
import 'package:hamzawy_store/core/constant/color.dart';

import '../../../core/constant/dimentions.dart';

class AuthCustomButton extends StatelessWidget {
  final String text;
  void Function()? onPressed;
   AuthCustomButton({Key? key, required this.text,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColor.primaryColor,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical:  Dimensions.height5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
          text,
        style: TextStyle(
            fontSize:  Dimensions.fontSize12
        ),
      ),
    );
  }
}
