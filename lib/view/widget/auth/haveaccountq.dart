import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';
import '../../../core/localization/translation.dart';

class HaveAccountQ extends StatelessWidget {
  final String text;
  final String action;
  final void Function() onTap;

  const HaveAccountQ({Key? key, required this.text, required this.action,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          text.tr,
          // textAlign: TextAlign.center,

          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(width:  Dimentions.height5,),
        InkWell(
          onTap: onTap,
          child: Text(
            action.tr,
            style: const TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w600,

            ),
          ),
        )
      ],
    );
  }
}
