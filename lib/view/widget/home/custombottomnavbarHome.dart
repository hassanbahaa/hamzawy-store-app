import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/homescreencontroller.dart';
import 'custombottomnavitem.dart';

class CustomBottomNavBarHome extends StatelessWidget {
  const CustomBottomNavBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(builder: (controller){
      return BottomAppBar(
        padding: const EdgeInsets.symmetric(vertical: 2.5),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          children: [
            ...List.generate(
                controller.listPage.length +1,
                    (index) {
                  int i = index > 2 ? index-1 : index;
                  return index== 2 ? const Spacer() : CustomNavBarItem(
                    icon: controller.listIcons[i],
                    text: controller.listnames[i],
                    active: controller.currentpage == i ? true : false,
                    onPressed: (){
                      controller.changePage(i);
                    },
                  );
                })
          ],
        ),
      );
    });
  }
}
