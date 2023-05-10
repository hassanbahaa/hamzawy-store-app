import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';

class LanguageCustomButton extends StatelessWidget {
  final String language ;
  final void Function()? onPressed;
  const LanguageCustomButton({Key? key,required this.language,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:  Dimentions.height80),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          language,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
