import 'package:get/get.dart';
import 'package:hamzawy_store/core/constant/routes_names.dart';

abstract class ResetPasswordSuccess extends GetxController{

  goToLogin();

}

class ResetPasswordSuccessImp extends ResetPasswordSuccess{
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
    update();
  }

}