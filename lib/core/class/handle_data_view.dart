import 'package:flutter/material.dart';
import 'package:hamzawy_store/core/class/statusrequest.dart';
import 'package:hamzawy_store/core/constant/image_asset.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest ;
  final Widget widget ;
  const HandlingDataView({Key? key, required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      statusRequest  == StatusRequest.loading?
         Center(child: Lottie.asset(AppImageAsset.loading)):
          statusRequest  == StatusRequest.offlineFailure?
             Center(child: Lottie.asset(AppImageAsset.offline)):
              statusRequest  == StatusRequest.serverFailure?
                 Center(child: Lottie.asset(AppImageAsset.server)):
                  statusRequest  == StatusRequest.failure?
                     Center(child: Lottie.asset(AppImageAsset.noData)):
                      widget;
  }
}
