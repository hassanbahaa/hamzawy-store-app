import 'package:get/get.dart';

import '../core/class/crud.dart';

class initBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Crud());
  }

}