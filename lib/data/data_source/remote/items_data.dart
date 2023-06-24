import 'package:hamzawy_store/core/class/crud.dart';
import 'package:hamzawy_store/linkapi.dart';

class ItemsData{

  Crud crud;

  ItemsData(this.crud);


  getData(String id) async{
    var response = await crud.postData(AppLink.itemspage, {"catID": id.toString()});
    return response.fold((l) => l, (r) => r);
  }



}
