import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/dimentions.dart';
import '../../../core/localization/change_local.dart';
import '../../../core/services/services.dart';

class TextFieldAuthCustom extends GetView<LocaleController> {
  final String label;
  final String hint;
  final Icon icon;
  final TextEditingController? myController;
  final TextInputType type;
  final String? Function(String?) valed;
  final void Function()? onTapIcon;
  final bool? password;

  const TextFieldAuthCustom(
      {
        Key? key, required this.label,
        required this.valed,
        required this.type,
        required this.hint,
        required this.icon,
        required this.myController,
        this.password,
        this.onTapIcon
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    String? sharedLang = myServices.sharedPreferences.getString('lang');
    return TextFormField(
      obscureText: password == null ? false : password!,
      validator: valed,
      keyboardType: TextInputType.emailAddress,
      controller: myController,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: sharedLang == 'en'
              ? EdgeInsets.only(top:  Dimensions.height5, bottom:  Dimensions.height5, left:  Dimensions.height25, right: 0)
              : EdgeInsets.only(top:  Dimensions.height5, bottom:  Dimensions.height5, left: 0, right:  Dimensions.height25),
          hintText: hint,
          hintStyle: TextStyle(fontSize:  Dimensions.fontSize18),
          label: Text(label,style: TextStyle(fontSize: Dimensions.fontSize20),),
          // suffixIcon: password == null || false ? icon : InkWell(child: icon,onTap: onTapIcon,),
          suffixIcon: InkWell(onTap: onTapIcon,child: icon,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          )),
      style: TextStyle(fontSize:  Dimensions.fontSize20),
    );
  }
}
