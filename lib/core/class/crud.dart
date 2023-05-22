import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;
class Crud {
  Future<Either<StatusRequest,Map>> postData(String linkUrl,Map data) async{
    // check if there is internet connection
    try{
      if( await checkInternet() ){
        var response = await http.post(Uri.parse(linkUrl),body: data);
        print("from crud file .. status code is ${response.statusCode} and ${response.body}");
        // if there is an internet connection
        if( response.statusCode == 200 || response.statusCode == 201 ){
          Map responseBody = jsonDecode(response.body);
          // return result body
          return Right(responseBody);
        }else{
          // if there is a problem in connection check so return server fail
          print("from crud file .. status code is ${response.statusCode}");
          return const Left(StatusRequest.serverFailure);
        }


      }else{
        return const Left(StatusRequest.offlineFailure);
      }
    }catch(r){
      print("catch error crud file ..  $r");
      return const Left(StatusRequest.serverFailure);
    }
  }
}



