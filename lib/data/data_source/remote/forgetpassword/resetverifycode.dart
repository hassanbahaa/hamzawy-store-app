import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class VerifyCodeResetPassword{

  Crud crud;

  VerifyCodeResetPassword(this.crud);


  postData(String email, String verifycode) async{
    var response = await crud.postData(AppLink.resetverifycode, {
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }



}
