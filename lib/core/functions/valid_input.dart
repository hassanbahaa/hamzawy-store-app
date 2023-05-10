import 'package:get/get.dart';

validInput(String val, int min, int max, String type,{String? pass}) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "valid username".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "valid email".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "valid phone".tr;
    }
  }

  // validate Confirm Password field
  if (type == "re-password") {
    if (val.isEmpty ) {
      return "empty".tr;
    } else if (val.length < min ) {
      return "short".tr + min.toString();
    } else if (val.length > max ) {
      return "long".tr + max.toString();
    }else {
      if(val != pass){
        return "password match".tr;
      }
    }


  }


  if (val.isNotEmpty && val.length < min ) {
    return "short".tr + min.toString();
  }

  if (val.isEmpty ) {
    return "empty".tr;
  }

  if (val.length > max ) {
    return "long".tr + max.toString();
  }

  if (val.length > max ) {
    return "long".tr + max.toString();
  }


}
