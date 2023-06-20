import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/linkapi.dart';
import 'package:hamzawy_store/view/widget/items/listcategoriesitems.dart';
import '../../../controller/itemscontroller.dart';
import '../../widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const CustomAppBar(titleAppBar: "Search"),
            SizedBox(
              height: 10,
            ),
            const ListCategoriesItems(),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Card(
                      elevation: 0.0,
                      color: AppColor.gery3,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CachedNetworkImage(
                                imageUrl:
                                    "${AppLink.imagesitems}/acerlaptop.png"),
                            Text(
                              "Product Name",
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Product Description",
                              style: TextStyle(
                                  color: AppColor.gery,
                                  fontSize: Dimensions.fontSize12),
                            ),
                            Container(
                              height: Dimensions.height25,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("2000 \$",
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500)
                                  ),
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                      onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,size: 16,)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

/*





 */
