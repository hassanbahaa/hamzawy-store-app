import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class SignUpData{

  Crud crud;

  SignUpData(this.crud);


  postData(String name,String email, String password,String phone) async{
    var response = await crud.postData(AppLink.signup, {
      "name" : name,
      "email" : email,
      "password" : password,
      "phone" : phone,
    });

    return response.fold((l) => l, (r) => r);
  }



}
