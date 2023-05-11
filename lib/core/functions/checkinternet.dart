import 'dart:io';

checkInternet()async{
  try{
    var result = await InternetAddress.lookup("google.com");
    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      print("there is connection with the internet :) ");
      return true;
    }
  }on SocketException catch(_){
    print("there is no connection, check your internet :( ");
    return false;
  }
}