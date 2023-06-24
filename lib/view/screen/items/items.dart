import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamzawy_store/core/class/handle_data_view.dart';
import 'package:hamzawy_store/core/constant/color.dart';
import 'package:hamzawy_store/core/constant/dimentions.dart';
import 'package:hamzawy_store/data/model/items_model.dart';
import 'package:hamzawy_store/linkapi.dart';
import 'package:hamzawy_store/view/widget/items/listcategoriesitems.dart';
import '../../../controller/itemscontroller.dart';
import '../../widget/customappbar.dart';
import '../../widget/items/customlistitems.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<ItemsControllerImp>(builder: (controller) {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const CustomAppBar(titleAppBar: "Search"),
              SizedBox(
                height: 10,
              ),
              const ListCategoriesItems(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.7,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: controller.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomListItems(
                            itemsModel:
                                ItemsModel.fromJson(controller.data[index]));
                      },
                    )),
              ),
            ],
          );
        }),
      ),
    );
  }
}

/*





 */
