import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/dimentions.dart';

class CustomCartHome extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CustomCartHome(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.secondaryColor,
        // color: AppColor.primaryColor,
      ),
      // width: Dimensions.screenWidth-60,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: Dimensions.height120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontSize: Dimensions.fontSize20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: Colors.white, fontSize: Dimensions.fontSize16),
                )
              ],
            ),
          ),
          // The circle section
          Container(
            height: Dimensions.width100,
            width: Dimensions.width100,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                // color: AppColor.secondaryColor,
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(Dimensions.height60)),
            child: image == null
                ? const Text("")
                : ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.height60),
                    child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  )),
          ),
        ],
      ),
    );
  }
}

/*

القديمة

Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // color: AppColor.primaryColor,
      ),
      // width: Dimensions.screenWidth-60,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: Dimensions.height120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.secondaryColor,
            ),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.fontSize20),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.fontSize18),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 5,
            child: Container(
              height: Dimensions.height120 - 10,
              width: Dimensions.height120 - 10,
              decoration: BoxDecoration(
                // color: AppColor.secondaryColor,
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(
                      Dimensions.height120 / 2)),
            ),
          )
        ],
      ),
    )


* */
