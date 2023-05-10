import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class SignUpSuccess extends GetxController{

  goToLogin();

}

class SignUpSuccessImp extends SignUpSuccess{
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }

}