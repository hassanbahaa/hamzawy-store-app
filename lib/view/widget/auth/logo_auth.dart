import 'package:flutter/material.dart';
import 'package:hamzawy_store/core/constant/image_asset.dart';

import '../../../core/constant/dimentions.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.nlogo,height:  Dimentions.height100,width:  Dimentions.height100,);
  }
}
