import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class ResetPasswordData{

  Crud crud;

  ResetPasswordData(this.crud);


  postData(String email, String password) async{
    var response = await crud.postData(AppLink.resetpassword, {
      "email" : email,
      "password" : password,
    });
    return response.fold((l) => l, (r) => r);
  }



}
