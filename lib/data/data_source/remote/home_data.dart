import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class HomeData{

  Crud crud;

  HomeData(this.crud);


  getData() async{
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }



}
