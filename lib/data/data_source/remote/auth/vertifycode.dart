import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class VerifyCodeSignUp{

  Crud crud;

  VerifyCodeSignUp(this.crud);


  postData(String email, String verifycode) async{
    var response = await crud.postData(AppLink.verifycode, {
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }



}
