import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/linkapi.dart';
import 'package:hamzawy_store/view/widget/items/listcategoriesitems.dart';
import '../../../controller/itemscontroller.dart';
import '../../widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller =  Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const CustomAppBar(titleAppBar: "Search"),
            SizedBox(height: 10,),
            const ListCategoriesItems(),
            SizedBox(height: 10,),
            Container(
              // height: 400,
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder:(context,index){
                    return InkWell(
                      child: Card(
                        child: Column(
                          children: [
                            CachedNetworkImage(imageUrl:"${AppLink.imagesitems}/acerlaptop.png"),
                          ],
                        ),
                      ),
                    );
                  } ),
            )
          ],
        ),
      ),
    );
  }
}

/*





 */