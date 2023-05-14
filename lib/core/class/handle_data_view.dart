import 'package:flutter/material.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest ;
  final Widget widget ;
  const HandlingDataView({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      statusRequest  == StatusRequest.loading?
        const Center(child: Text("Loading",style: TextStyle(fontSize: 20),)):
          statusRequest  == StatusRequest.offlineFailure?
            const Center(child: Text("!! No internet connection available !! ",style: TextStyle(fontSize: 20),)):
              statusRequest  == StatusRequest.serverFailure?
                const Center(child: Text("!! Server failure !!",style: TextStyle(fontSize: 20),)):
                  statusRequest  == StatusRequest.failure?
                    const Center(child: Text("!! No Data !!",style: TextStyle(fontSize: 20),)):
                      widget;
  }
}
