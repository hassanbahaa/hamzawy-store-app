import 'package:flutter/material.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';

class CustomNavBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;
  final void Function()? onPressed;

  const CustomNavBarItem(
      {Key? key,
      required this.icon,
      required this.text,
      this.onPressed,
      required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width70,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width5/2),
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(Dimensions.width20)
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: active == true ? AppColor.primaryColor : AppColor.gery2,
              size: Dimensions.fontSize20 + 2,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: Dimensions.fontSize10,
                color: active == true ? AppColor.primaryColor : AppColor.gery2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
